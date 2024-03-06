import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/email.verification.controller.dart';
import 'package:k_wear_v2/features/authentication/controllers/user.controller.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final emailcontroller = Get.put(MailVerificationController());
  final usercontroller = Get.put(UserController());
  final user = FirebaseAuth.instance.currentUser;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Image.asset(
                    'assets/email.png',
                    scale: 5.0,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //Hello Again
                  Text(
                    'Verify your email address',
                    style: $styles.text.bodyBold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We have just sent an email verification link on your email. Please check email to verify your Email address.',
                    style: $styles.text.bodySmall,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'If not auto redirected after verification, click on the Login button',
                    style: $styles.text.bodySmall,
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  //continue button

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 90.0),
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         _isLoading = true;
                  //       });
                  //       emailcontroller.manuallyCheckEmailVerificationStatus();
                  //       setState(() {
                  //         _isLoading = false;
                  //       });
                  //     },
                  //     child: _isLoading
                  //         ? user!.emailVerified
                  //             ? const Text('Verified')
                  //             : const Text('Email not verified')
                  //         : Row(
                  //             children: [
                  //               const Text('Verifying ...'),
                  //               const SizedBox(
                  //                 width: 5,
                  //               ),
                  //               SizedBox(
                  //                 height: 20,
                  //                 width: 20,
                  //                 child: CircularProgressIndicator(
                  //                   color: $styles.colors.greyStrong,
                  //                   strokeWidth: 1.0,
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isLoading = true;
                        });
                        emailcontroller.manuallyCheckEmailVerificationStatus();
                        setState(() {
                          _isLoading = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: $styles.colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: _isLoading
                              ? Text(
                                  'Continue',
                                  style: $styles.text.bodySmall
                                      .copyWith(color: $styles.colors.blackOut),
                                )
                              : Row(
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
                                    Text("Verifying ...")
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //resend email link
                  Row(
                    children: [
                      Text(
                        "Didn't recieve email ?",
                        style: $styles.text.body.copyWith(
                          color: $styles.colors.blackOut,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          // await usercontroller.emailVerification();
                          await user!.sendEmailVerification();
                        },
                        child: Text(
                          "Resend Email Link",
                          style: $styles.text.body.copyWith(
                            color: $styles.colors.greyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: OutlinedButton(
                      // color: $styles.colors.brown,
                      onPressed: () {
                        usercontroller.signout();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MdiIcons.arrowLeft,
                            color: $styles.colors.blue,
                          ),
                          Text(
                            "back to login",
                            style: $styles.text.body.copyWith(
                              color: $styles.colors.greyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
