import 'package:k_wear_v2/commonlibs.dart';

class KChipTheme {
  KChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: $styles.colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: $styles.colors.white
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: $styles.colors.grey,
    labelStyle: TextStyle(color: $styles.colors.white),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: $styles.colors.white
  );
}
