import 'package:k_wear_v2/commonlibs.dart';

class KCartCounterIcon extends StatelessWidget {
  const KCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: const Text('4'),
      backgroundColor: iconColor,
      offset: const Offset(-2, 3),
      child: IconButton(
        icon: Icon(MdiIcons.shoppingOutline),
        onPressed: onPressed,
      ),
    );
  }
}