import 'package:k_wear_v2/commonlibs.dart';

class KTextTheme {
  KTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 32.0, fontWeight: FontWeight.bold, color: $styles.colors.black),
    headlineMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 24.0, fontWeight: FontWeight.w600, color: $styles.colors.black),
    headlineSmall: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 18.0, fontWeight: FontWeight.w600, color: $styles.colors.black),
    titleLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 16.0, fontWeight: FontWeight.w600, color: $styles.colors.black),
    titleMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 16.0, fontWeight: FontWeight.w500, color: $styles.colors.black),
    titleSmall: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 16.0, fontWeight: FontWeight.w400, color: $styles.colors.black),
    bodyLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 14.0, fontWeight: FontWeight.w500, color: $styles.colors.black),
    bodyMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 14.0, fontWeight: FontWeight.normal, color: $styles.colors.black),
    bodySmall: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 14.0, fontWeight: FontWeight.w500, color: $styles.colors.black),
    labelLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 12.0, fontWeight: FontWeight.normal, color: $styles.colors.black),
    labelMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 12.0, fontWeight: FontWeight.normal, color: $styles.colors.black),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 32.0, fontWeight: FontWeight.bold, color: $styles.colors.white),
    headlineMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 24.0, fontWeight: FontWeight.w600, color: $styles.colors.white),
    titleLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 16.0, fontWeight: FontWeight.w600, color: $styles.colors.white),
    titleMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 16.0, fontWeight: FontWeight.w500, color: $styles.colors.white),
    titleSmall: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 16.0, fontWeight: FontWeight.w400, color: $styles.colors.white),
    bodyLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 14.0, fontWeight: FontWeight.w500, color: $styles.colors.white),
    bodyMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 14.0, fontWeight: FontWeight.normal, color: $styles.colors.white),
    bodySmall: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 14.0, fontWeight: FontWeight.w500, color: $styles.colors.white),
    labelLarge: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 12.0, fontWeight: FontWeight.normal, color: $styles.colors.white),
    labelMedium: TextStyle()
        .copyWith(fontFamily: 'Causten', fontSize: 12.0, fontWeight: FontWeight.normal, color: $styles.colors.white),
  );
}
