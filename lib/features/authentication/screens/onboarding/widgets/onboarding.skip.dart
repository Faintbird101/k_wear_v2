import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/onboarding.controller.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/device/device.utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Positioned(
      top: KDeviceUtils.getAppBarHeight(),
      right: KSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          controller.skipPage();
        },
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
