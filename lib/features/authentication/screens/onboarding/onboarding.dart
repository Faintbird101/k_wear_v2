import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/onboarding.controller.dart';
import 'package:k_wear_v2/features/authentication/screens/onboarding/widgets/onboarding.page.dart';
import 'package:k_wear_v2/utils/constants/image.strings.dart';
import 'package:k_wear_v2/utils/constants/text.string.dart';
import 'widgets/onboarding.dot.navigation.dart';
import 'widgets/onboarding.next.button.dart';
import 'widgets/onboarding.skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: KImages.onBoardingImage2,
                title: KTexts.onBoardingTitle1,
                subTitle: KTexts.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage3,
                title: KTexts.onBoardingTitle2,
                subTitle: KTexts.onBoardingSubtitle3,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage1,
                title: KTexts.onBoardingTitle3,
                subTitle: KTexts.onBoardingSubtitle3,
              ),
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothIndicator
          const OnBoardingNavigation(),

          // Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
