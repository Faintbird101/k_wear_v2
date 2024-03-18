import 'package:k_wear_v2/common/widgets/image.text.widget/vertical.image.text.dart';
import 'package:k_wear_v2/commonlibs.dart';

class KHomeCategories extends StatelessWidget {
  const KHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return KVertical_Image(
            title: 'Shoe Sneaker',
            image: '',
            onTap: () {},
          );
        },
      ),
    );
  }
}
