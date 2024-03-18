import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/constants/sizes.dart';

class KSearchBar extends StatelessWidget {
  const KSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: $styles.colors.grey.withOpacity(0.4),
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: $styles.colors.greyStrong),
          ),
          labelText: "Search",
          labelStyle: TextStyle(color: $styles.colors.grey.withOpacity(0.4)),
          floatingLabelStyle: TextStyle(color: $styles.colors.greyStrong),
          fillColor: $styles.colors.white,
          filled: true,
          prefixIcon: IconButton(
            icon: Icon(MdiIcons.magnify),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}