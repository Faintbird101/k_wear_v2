import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:k_wear_v2/features/authentication/screens/auth/auth.page.dart';
import 'package:k_wear_v2/features/authentication/screens/verification/email.verification.dart';
import 'package:k_wear_v2/features/shop/screens/Home/home.page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  // final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
            return user.emailVerified
                ? const HomeScreen()
                : const EmailVerificationScreen();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
