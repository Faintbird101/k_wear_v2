import 'package:k_wear_v2/common/widgets/custom.shapes/containers/circular.containers.dart';
import 'package:k_wear_v2/common/widgets/custom.shapes/curved.edges/curved.edges.widget.dart';
import 'package:k_wear_v2/commonlibs.dart';

class KPrimaryHeaderContainer extends StatelessWidget {
  const KPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KCurvedEdgeWidget(
      child: Container(
        color: $styles.colors.greyMedium,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: KCircularContainer(
                  radius: 400,
                  height: 400,
                  width: 400,
                  backgroundColor: $styles.colors.white.withOpacity(0.2),
                ),
              ),
              Positioned(
                top: 100,
                right: 300,
                child: KCircularContainer(
                  radius: 400,
                  height: 400,
                  width: 400,
                  backgroundColor: $styles.colors.white.withOpacity(0.2),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}