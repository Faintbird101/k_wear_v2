import 'package:k_wear_v2/common/widgets/custom.shapes/curved.edges/curved.edges.dart';
import 'package:k_wear_v2/commonlibs.dart';

class KCurvedEdgeWidget extends StatelessWidget {
  const KCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: KCustomCurvedEdges(),
      child: child,
    );
  }
}