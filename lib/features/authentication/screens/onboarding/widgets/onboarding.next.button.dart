import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/features/authentication/controllers/onboarding.controller.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/device/device.utility.dart';
// import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    // final dark = KHelperFunctions.isDarkMode(context);
    return Positioned(
      right: KSizes.defaultSpace,
      bottom: KDeviceUtils.getBottomNavigationBarHeight(),
      child: TextButton(
        onPressed: () {
          controller.nextPage();
        },
        child: Row(
          children: [
            Text(
              'Next',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Icon(MdiIcons.chevronRight)
          ],
        ),
      ),
      // ElevatedButton(
      //   child: Icon(MdiIcons.chevronRight),
      //   onPressed: () {
      //     controller.nextPage();
      //   },
      // ),
    );
  }
}
