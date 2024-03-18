import 'package:k_wear_v2/common/widgets/appbar/appbar.dart';
import 'package:k_wear_v2/common/widgets/products/cart/cart.menu.icon.dart';
import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/constants/text.string.dart';

class KHomeAppBar extends StatelessWidget {
  const KHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;
    return KAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            KTexts.homeAppbarTitle1,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: $styles.colors.greyStrong),
          ),
          Text(
            currentUser!.displayName!.capitalize!,
            // KTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: $styles.colors.white),
          ),
        ],
      ),
      actions: [
        KCartCounterIcon(
          onPressed: () {},
          iconColor: $styles.colors.black.withOpacity(0.5),
        ),
      ],
    );
  }
}
