import 'dart:developer';

import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/user.controller.dart';
import 'package:k_wear_v2/features/authentication/screens/verification/forgot.pwd.page.dart';
import 'package:k_wear_v2/utils/constants/image.strings.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback? showRegisterPage;
  const LoginPage({super.key, this.showRegisterPage});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userscontroller = Get.put(UserController());

  bool istapped = false;
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Image.asset(
                  dark ? KImages.darkWelcomeLogo : KImages.lightWelcomeLogo,
                  // 'assets/welcome-back.png',
                  scale: 3.6,
                ),
                // Icon(
                //   MdiIcons.bullseyeArrow,
                //   size: 100,
                // ),
                const SizedBox(
                  height: KSizes.defaultSpace,
                ),
                //Hello Again
                Text(
                  'Hello Again',
                  style: $styles.text.bodyBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome back, you\'ve been missed!',
                  style: $styles.text.bodySmall,
                ),
                const SizedBox(
                  height: 50,
                ),

                //email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: userscontroller.emailcontroller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: $styles.colors.grey.withOpacity(0.4),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: $styles.colors.blue)),
                      labelText: "Email",
                      hintText: "Email",
                      fillColor: $styles.colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        MdiIcons.email,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //password textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    autocorrect: false,
                    enableSuggestions: false,
                    controller: userscontroller.passwordcontroller,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                      ),
                      prefixIcon: Icon(
                        MdiIcons.lock,
                        // size: 100,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: $styles.colors.grey.withOpacity(0.4),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: $styles.colors.blue)),
                      labelText: "Password",
                      hintText: "Password",
                      fillColor: $styles.colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => const ForgotPasswordPage(),
                          );
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: $styles.text.body.copyWith(
                            color: $styles.colors.greyStrong,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                //signin button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      setState(() {
                        _isLoading = true;
                      });
                      await userscontroller.signIn();
                      setState(() {
                        _isLoading = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: $styles.colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: _isLoading
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
                                  const Text("Loading ...")
                                ],
                              )
                            : Text(
                                'Sign In',
                                style: $styles.text.bodySmall.copyWith(color: $styles.colors.blackOut),
                              ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 15.0,
                          // endIndent: 2.0,
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Text(
                          'or continue with',
                          style: $styles.text.bodySmall,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          endIndent: 15.0,
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                SignInButton(
                  buttonType: ButtonType.google,
                  onPressed: () async {
                    setState(() {
                      _isLoading = true;
                    });
                    log("Google Button Pressed");
                    await userscontroller.googleLogin();
                    setState(() {
                      _isLoading = false;
                    });
                  },
                ),
                const SizedBox(
                  height: 25,
                ),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member?"),
                    const SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: widget.showRegisterPage,
                      child: Text(
                        "Register now",
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
