import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/screens/onboarding/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset("assets/logos/launch.json"),
          ),
        ],
      ),
      splashIconSize: 400,
      backgroundColor: $styles.colors.grey,
      nextScreen: const OnBoardingScreen(),
    );
  }
}
