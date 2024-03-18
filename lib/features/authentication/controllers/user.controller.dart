import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/models/user.model.dart';
import 'package:k_wear_v2/features/authentication/screens/auth/main.page.dart';

enum SocialAuth {
  google,
  facebook,
}

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final createpasswordcontroller = TextEditingController();
  final confirmPasswordcontroller = TextEditingController();
  final resetPasswordcontroller = TextEditingController();
  final firstnamecontroller = TextEditingController();
  final lastnamecontroller = TextEditingController();

  // final db = FirebaseFirestore.instance.collection("users");
  final user = FirebaseAuth.instance.currentUser;
  final Rx<GoogleSignInAccount?> googleUser = Rxn<GoogleSignInAccount?>();

  final GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'profile',
    ],
  );

  final secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));

  Future signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailcontroller.text,
            password: passwordcontroller.text,
          )
          .then(
            (value) => Get.snackbar(
              "Sucess", "Your logged in ",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: $styles.colors.green.withOpacity(0.4),
            ),
          );
      emailcontroller.clear();
      passwordcontroller.clear();
      confirmPasswordcontroller.clear();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error", e.message.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: $styles.colors.red.withOpacity(0.1),
      );
    }
  }

  bool passwordAndNameConfirmed() {
    bool isConfirmed = createpasswordcontroller.text == confirmPasswordcontroller.text;
    bool isFirstNameValid = firstnamecontroller.text.isNotEmpty;
    if (isConfirmed) {
      return true;
    } else if (!isConfirmed) {
      Get.snackbar(
        "Error", 'Passwords do not match.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: $styles.colors.red.withOpacity(0.4),
      );
      return false;
    }
    if (isFirstNameValid) {
      Get.snackbar(
        "Error", 'First name is required!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: $styles.colors.red.withOpacity(0.4),
      );
      return true;
    } else {
      return false;
    }
  }

  Future signUp() async {
    final user = UsersModel(
      email: emailcontroller.text,
      password: createpasswordcontroller.text,
    );
    if (passwordAndNameConfirmed()) {
      try {
        //create the user
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: user.email,
              password: user.password,
            )
            .whenComplete(
              () => Get.snackbar(
                "Sucess", "Your Account has been created",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: $styles.colors.green.withOpacity(0.4),
              ),
            );
        // log(user.toString());
        //create a new document in cloud firestore called users
        FirebaseFirestore.instance.collection("users").doc(userCredential.user!.email).set({
          // 'initials' : firstnamecontroller.text.
          'email': emailcontroller.text,
          'firstname': firstnamecontroller.text,
          'lastname': lastnamecontroller.text,
          'bio': 'Empty bio..',
          // 'isEmailVerified': userEmailVerification.toString(),
        });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
          Get.snackbar(
            "Error", 'A network error has occurred.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: $styles.colors.red.withOpacity(0.4),
          );
        }
        Get.snackbar(
          "Error", e.message.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: $styles.colors.red.withOpacity(0.4),
        );
      }
    }
    emailcontroller.clear();
    createpasswordcontroller.clear();
    confirmPasswordcontroller.clear();
    firstnamecontroller.clear();
    lastnamecontroller.clear();
  }

  Future signout() async {
    await FirebaseAuth.instance
        .signOut()
        .then(
          (value) => Get.snackbar(
            "Sucess", "You logged out ",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: $styles.colors.green.withOpacity(0.4),
          ),
        )
        .catchError((e, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try again",
          borderRadius: 5.0,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: $styles.colors.red.withOpacity(0.1),
          colorText: $styles.colors.blackOut);
      log(e.toString());
    });
    await googleSignIn.disconnect();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(
            email: resetPasswordcontroller.text,
          )
          .then(
            (value) => Get.to(
              () => const Mainpage(),
            ),
          );
      Get.snackbar("Sucess", "Your Password has been reset",
          borderRadius: 5.0,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: $styles.colors.green.withOpacity(0.7),
          colorText: $styles.colors.blackOut);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: $styles.colors.red.withOpacity(0.1),
          );
    }
    resetPasswordcontroller.clear();
  }

  Future<void> emailVerification() async {
    try {
      await user?.sendEmailVerification().then(
            (value) => Get.snackbar("Sucess", "Check your email for verification",
                borderRadius: 5.0,
                margin: const EdgeInsets.symmetric(vertical: 5),
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: $styles.colors.green.withOpacity(0.7),
                colorText: $styles.colors.blackOut),
          );
    } on FirebaseAuthException catch (e) {
      Get.snackbar("emailVerification Error", e.message.toString(),
          borderRadius: 5.0,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: $styles.colors.red.withOpacity(0.1),
          colorText: $styles.colors.blackOut);
    }
  }

  Future<void> googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      log("User has logged in => ${googleUser.email} 10109");
      // _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      log("credential => ${credential.toString()}");

      await FirebaseAuth.instance.signInWithCredential(credential);
      log("User has logged in => ${googleUser.email} 10101");

      // Split the String into a list of words
      List<String> words = googleUser.displayName.toString().split(' ');
      // Get the first word
      String firstName = words.isNotEmpty ? words[0] : '';
      // Get the second word
      String secondName = words.isNotEmpty ? words[1] : '';

      FirebaseFirestore.instance.collection("users").doc(googleUser.email).set({
        // 'initials' : firstnamecontroller.text.
        'email': googleUser.email,
        'firstname': firstName,
        'lastname': secondName,
        'bio': 'Empty bio..',
        // 'isEmailVerified': userEmailVerification.toString(),
      });
    } catch (error) {
      rethrow;
    }
    update();
  }
}
