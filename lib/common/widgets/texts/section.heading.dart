import 'package:k_wear_v2/commonlibs.dart';

class KSectionHeading extends StatelessWidget {
  const KSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    required this.buttonTitle,
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: $styles.colors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}