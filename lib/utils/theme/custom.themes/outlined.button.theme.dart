import 'package:k_wear_v2/commonlibs.dart';

class KOutlinedButtonTheme {
  KOutlinedButtonTheme._();

  static final ligthOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: $styles.colors.black,
      side: BorderSide(color: $styles.colors.grey),
      textStyle: TextStyle(fontSize: 16, color: $styles.colors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    )
  );
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: $styles.colors.white,
      side: BorderSide(color: $styles.colors.grey),
      textStyle: TextStyle(fontSize: 16, color: $styles.colors.white, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    )
  );
}
