import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';
import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

class KVertical_Image extends StatelessWidget {
  const KVertical_Image({
    super.key,
    required this.image,
    required this.title,
    this.txtColor,
    this.background,
    this.onTap,
  });

  final String image, title;
  final Color? txtColor;
  final Color? background;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: KSizes.defaultnormalSpace),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(KSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: dark ? $styles.colors.black : $styles.colors.white,
              ),
              child: Center(
                child: Icon(
                  MdiIcons.shoeSneaker,
                  color: dark ? $styles.colors.white : $styles.colors.blackOut,
                ),
              ),
            ),

            // Text
            SizedBox(
              width: 55,
              child: Text(
                // 'Shoe Sneaker',
                title,
                style: $styles.text.bodySmall.copyWith(color: dark ? $styles.colors.white : $styles.colors.blackOut),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
