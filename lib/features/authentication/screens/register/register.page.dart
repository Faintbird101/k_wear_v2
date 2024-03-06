
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/user.controller.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key, required this.showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isWaiting = false;
  bool _obscureText = true;
  final userscontroller = Get.put(UserController());
  final _formKey = GlobalKey<FormState>();

  String? validateEmail(String? email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isEmailValid = emailRegExp.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  'assets/login.png',
                  scale: 5.0,
                ),
                // Icon(
                //   MdiIcons.weightLifter,
                //   size: 100,
                // ),
                const SizedBox(
                  height: 30,
                ),
                //Hello Again
                Text(
                  'Hello There',
                  style: $styles.text.bodyBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Register below with your credentials!',
                  style: $styles.text.bodySmall,
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //first name
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          controller: userscontroller.firstnamecontroller,
                          onChanged: (value) {
                            _formKey.currentState!.validate();
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Valid name is required';
                            }
                            // You can add more specific validation logic here
                            return null;
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: $styles.colors.grey.withOpacity(0.4),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: $styles.colors.blue)),
                            hintText: "First name",
                            fillColor: $styles.colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //last name
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          controller: userscontroller.lastnamecontroller,
                          onChanged: (value) {
                            _formKey.currentState!.validate();
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Valid name is required';
                            }
                            // You can add more specific validation logic here
                            return null;
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: $styles.colors.grey.withOpacity(0.4),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: $styles.colors.blue)),
                            hintText: "Last Name",
                            fillColor: $styles.colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //email textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          controller: userscontroller.emailcontroller,
                          validator: validateEmail,
                          onChanged: (value) {
                            _formKey.currentState!.validate();
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: $styles.colors.grey.withOpacity(0.4),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: $styles.colors.blue)),
                            hintText: "Email",
                            fillColor: $styles.colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //password textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          controller: userscontroller.createpasswordcontroller,
                          obscureText: _obscureText,
                          onChanged: (value) {
                            _formKey.currentState!.validate();
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: $styles.colors.grey.withOpacity(0.4),
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: $styles.colors.blue),
                            ),
                            labelText: "Password",
                            hintText: "Password",
                            fillColor: $styles.colors.white,
                            filled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      //confirm password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextFormField(
                          controller: userscontroller.confirmPasswordcontroller,
                          obscureText: _obscureText,
                          onChanged: (value) {
                            _formKey.currentState!.validate();
                          },
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: $styles.colors.grey.withOpacity(0.4),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: $styles.colors.blue)),
                            hintText: "Confirm Password",
                            fillColor: $styles.colors.white,
                            filled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),

                //signin button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      setState(() {
                        _isWaiting = true;
                      });
                      if (_formKey.currentState!.validate()) {
                        if (userscontroller.createpasswordcontroller.text.toString() ==
                                userscontroller.confirmPasswordcontroller.text.toString() &&
                            userscontroller.createpasswordcontroller.text.isNotEmpty &&
                            userscontroller.confirmPasswordcontroller.text.isNotEmpty) {
                          await userscontroller.signUp();
                        } else {
                          Get.snackbar("Error", "Password don't match",
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              borderRadius: 5.0,
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: $styles.colors.error.withOpacity(0.7),
                              colorText: $styles.colors.blackOut);
                        }
                      }
                      setState(() {
                        _isWaiting = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: $styles.colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: _isWaiting
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: $styles.colors.greyStrong,
                                      strokeWidth: 2.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text("Registering ...")
                                ],
                              )
                            : Text(
                                'Sign Up',
                                style: $styles.text.bodySmall.copyWith(color: $styles.colors.blackOut),
                              ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    const SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      child: Text(
                        "Login",
                        style: $styles.text.body.copyWith(
                          color: $styles.colors.greyMedium,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
