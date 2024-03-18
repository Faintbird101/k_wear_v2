// import 'package:k_wear_v2/commonlibs.dart';
// import 'package:k_wear_v2/utils/constants/image.strings.dart';
// import 'package:k_wear_v2/utils/constants/sizes.dart';
// import 'package:k_wear_v2/utils/constants/text.string.dart';
// import 'package:k_wear_v2/utils/helpers/helper.functions.dart';

// class KLoginHeader extends StatelessWidget {
//   const KLoginHeader({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final dark = KHelperFunctions.isDarkMode(context);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image(
//           height: KSizes.imageThumbSizeMd,
//           image: AssetImage(dark ? KImages.lightAppLogo : KImages.darkAppLogo),
//         ),
//         const SizedBox(height: 20),
//         Text(
//           // 'K-Wear',
//           KTexts.loginTitle,
//           style: Theme.of(context).textTheme.headlineMedium,
//         ),
//         const SizedBox(
//           height: KSizes.sm,
//         ),
//         Text(
//           // 'K-Wear',
//           KTexts.loginSubTitle,
//           style: Theme.of(context).textTheme.bodyMedium,
//         ),
//         const SizedBox(height: 10),
//       ],
//     );
//   }
// }