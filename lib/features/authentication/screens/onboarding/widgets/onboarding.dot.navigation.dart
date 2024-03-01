import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/onboarding.controller.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/device/device.utility.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = KHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: KDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: KSizes.defaultSpace,
      child: SmoothPageIndicator(
          controller: controller.pageController, // PageController
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: $styles.colors.grey,
            dotHeight: 8,
          ), // your preferred effect
          onDotClicked: controller.dotNavigationClick,
          ),
    );
  }
}
