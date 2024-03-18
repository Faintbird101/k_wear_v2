// import 'dart:developer';

// import 'package:flutter/foundation.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:k_wear_v2/commonlibs.dart';
// import 'package:k_wear_v2/features/authentication/screens/auth/main.page.dart';
// import 'package:k_wear_v2/features/authentication/screens/login/login.page.dart';
// import 'package:k_wear_v2/features/authentication/screens/onboarding/onboarding.dart';

// class AuthenticationRepository extends GetxController {
//   static AuthenticationRepository get instance => Get.find();

//   // Variables
//   final deviceStorage = GetStorage();
//   final bool ukweli = true;

//   // called from main.dart on app launch
//   @override
//   void onReady() {
//     FlutterNativeSplash.remove();
//     screenRedirect();
//   }

//   // Function to show the relevant screen
//   screenRedirect() async {
//     // Local Storage
//     if (kDebugMode) {
//       log("==================  GET STORAGE =================");
//       log(deviceStorage.read('isFirstTime'));
//     }
//     deviceStorage.writeIfNull('isFirstTime', true);
//     deviceStorage.read('isFirstTime') != true
//         ? Get.offAll(() => const Mainpage())
//         : Get.offAll(() => const OnBoardingScreen());
//   }
// }
