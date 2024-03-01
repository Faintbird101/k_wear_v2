import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class KSocialButtons extends StatelessWidget {
  const KSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignInButton.mini(
          buttonType: dark ? ButtonType.googleDark : ButtonType.google,
          onPressed: () {},
        ),
        const SizedBox(width: KSizes.spaceBtwnSections),
        SignInButton.mini(
          buttonType: dark ? ButtonType.facebookDark : ButtonType.facebook,
          onPressed: () {},
        ),
      ],
    );
  }
}