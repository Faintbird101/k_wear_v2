import 'package:k_wear_v2/commonlibs.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/appbar.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/bottom.sheet.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/checkbox.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/chip.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/elevated.button.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/outlined.button.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/text.field.theme.dart';
import 'package:k_wear_v2/utils/theme/custom.themes/text.theme.dart';

class KAppTheme {
  KAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: $styles.colors.greylight,
    textTheme: KTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.grey.shade300,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: KCheckboxTheme.lightCheckboxTheme,
    chipTheme: KChipTheme.lightChipTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.ligthOutlinedButtonTheme,
    inputDecorationTheme: KTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: $styles.colors.grey,
      textTheme: KTextTheme.darkTextTheme,
      scaffoldBackgroundColor: $styles.colors.greyStrong,
      elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: KAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: KCheckboxTheme.darkCheckboxTheme,
      chipTheme: KChipTheme.darkChipTheme,
      outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: KTextFieldTheme.darkInputDecorationTheme);
}
