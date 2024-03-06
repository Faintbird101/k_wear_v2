
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/user.controller.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final userscontroller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Enter Your Email Address",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: userscontroller.resetPasswordcontroller,
              // obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: $styles.colors.grey,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: $styles.colors.blue)),
                hintText: "Email",
                fillColor: $styles.colors.white,
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    userscontroller.passwordReset();
                  },
                  child: Text("Reset Password"),
                  color: $styles.colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
