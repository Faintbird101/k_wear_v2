import 'package:k_wear_v2/commonlibs.dart';

class KAppBarTheme {
  KAppBarTheme._();

  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: $styles.colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: $styles.colors.black, size: 24),
    titleTextStyle: TextStyle(color: $styles.colors.black, fontSize: 18, fontWeight: FontWeight.w600),
  );
  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: $styles.colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: $styles.colors.white, size: 24),
    titleTextStyle: TextStyle(color: $styles.colors.white, fontSize: 18, fontWeight: FontWeight.w600),
  );
}
