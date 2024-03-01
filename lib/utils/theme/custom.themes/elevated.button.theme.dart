import 'package:k_wear_v2/commonlibs.dart';

class KElevatedButtonTheme {
  KElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: $styles.colors.white,
      backgroundColor: $styles.colors.greyMedium,
      disabledForegroundColor: $styles.colors.grey,
      disabledBackgroundColor: $styles.colors.grey,
      side: BorderSide(color: $styles.colors.greyStrong,),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(fontSize: 16, color: $styles.colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    )
  );


  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: $styles.colors.white,
      backgroundColor: $styles.colors.greyMedium,
      disabledForegroundColor: $styles.colors.grey,
      disabledBackgroundColor: $styles.colors.grey,
      side: BorderSide(color: $styles.colors.greyStrong,),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(fontSize: 16, color: $styles.colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    )
  );
}
