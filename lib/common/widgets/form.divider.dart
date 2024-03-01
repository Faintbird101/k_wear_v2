import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class KFormDivider extends StatelessWidget {
  const KFormDivider({
    super.key, required this.dividerText,
  });
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: dark ? $styles.colors.greylight : $styles.colors.greyStrong,
            thickness: 0.5,
            indent: 40,
            endIndent: 8.0,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        // const SizedBox(width: KSizes.spaceBtwnSections),
        Expanded(
          child: Divider(
            color: dark ? $styles.colors.greylight : $styles.colors.greyStrong,
            thickness: 0.5,
            indent: 8.0,
            endIndent: 40.0,
          ),
        ),
      ],
    );
  }
}