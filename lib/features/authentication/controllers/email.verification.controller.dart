import 'dart:async';
import 'dart:developer';

import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/user.controller.dart';
import 'package:k_wear_v2/features/authentication/screens/auth/main.page.dart';




class MailVerificationController extends GetxController {
  static UserController to = Get.find();
  late Timer _timer;

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  void onInit() {
    super.onInit();
    sendVerificationEmail();
    setTimerForAutoRedirect();
  }

  Future<void> sendVerificationEmail() async {
    try {
      await UserController.instance.emailVerification();
    } catch (e) {
      Get.snackbar("sendVerification Error", e.toString(),
          // duration: Duration(seconds: 3),
          borderRadius: 5.0,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: $styles.colors.red.withOpacity(0.1),
          colorText: $styles.colors.blackOut);
    }
  }

  Future<void> setTimerForAutoRedirect() async {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser!;
      if (user.emailVerified) {
        timer.cancel();
        log('timer canceled');
        Get.to(() => const Mainpage());
      }
    });
  }

  Future<void> manuallyCheckEmailVerificationStatus() async {
    await FirebaseAuth.instance.currentUser?.reload();
    final user = FirebaseAuth.instance.currentUser;
    if (user!.emailVerified) {
      Get.to(() => const Mainpage());
    }
  }
}
