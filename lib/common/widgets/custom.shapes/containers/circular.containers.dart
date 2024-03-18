import 'package:k_wear_v2/commonlibs.dart';

class KCircularContainer extends StatelessWidget {
  const KCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.child,
    required this.backgroundColor,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius!),
      child: Container(
        height: height,
        width: width,
        color: backgroundColor,
        child: child,
      ),
    );
  }
}