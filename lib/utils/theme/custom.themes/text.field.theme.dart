import 'package:k_wear_v2/commonlibs.dart';

class KTextFieldTheme {
  KTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: $styles.colors.grey,
    suffixIconColor: $styles.colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: $styles.colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: $styles.colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: $styles.colors.black),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.grey, width: 1),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.black, width: 1),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.grey, width: 1),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.grey, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.error, width: 1),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: $styles.colors.grey,
    suffixIconColor: $styles.colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: $styles.colors.white),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: $styles.colors.white),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: $styles.colors.white),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.grey, width: 1),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.white, width: 1),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.grey, width: 1),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.grey, width: 1),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: $styles.colors.error, width: 1),
    ),
  );
}
