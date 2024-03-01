import 'package:flutter/material.dart';
import 'package:k_wear_v2/utils/constants/image.strings.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/constants/text.string.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            children: [
              Column(
                children: [
                  Lottie.asset(
                    KImages.onBoardingImage1,
                    width: KHelperFunctions.screenWidth() * 0.8,
                    height: KHelperFunctions.screenHeight() * 0.6,
                  ),
                  Text(
                    KTexts.onBoardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox( height: KSizes.spaceBtwnItems,),
                  Text(
                    KTexts.onBoardingSubtitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),

                ],
              )
            ],
          ),
          // Skip Button

          // Dot Navigation SmoothIndicator

          // Circular Button
        ],
      ),
    );
  }
}
