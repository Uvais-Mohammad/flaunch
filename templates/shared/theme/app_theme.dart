import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_pallette.dart';
import 'color_scheme.dart';
import 'font_pallette.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: ColorPalette.primaryColor,
      dividerColor: Colors.transparent,
      colorScheme: const ColorScheme.light(),
      extensions: <ThemeExtension<MyColorScheme>>[
        MyColorScheme.lightScheme,
      ],
      appBarTheme: AppBarTheme(
        backgroundColor: ColorPalette.backgroundColor,
        iconTheme: const CupertinoIconThemeData(),
      ),
      scaffoldBackgroundColor: ColorPalette.backgroundColor,
      textTheme: textLightTheme,
      primaryTextTheme: textLightTheme,
      fontFamily: FontPalette.themeFont,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: ColorPalette.primaryColor),
      ),
      textSelectionTheme: TextSelectionThemeData(cursorColor: ColorPalette.titleColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorPalette.backgroundColor,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ColorPalette.backgroundColor,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: ColorPalette.backgroundColor,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(foregroundColor: ColorPalette.titleColor),
      ),
      dialogBackgroundColor: ColorPalette.backgroundColor,
      dialogTheme: DialogTheme(
        backgroundColor: ColorPalette.backgroundColor,
        iconColor: ColorPalette.titleColor,
      ),
      iconTheme: IconThemeData(color: ColorPalette.titleColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorPalette.primaryColor,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: ColorPalette.primaryColorDark,
      dividerColor: ColorPalette.dividerColorDark,
      colorScheme: const ColorScheme.dark(),
      extensions: <ThemeExtension<MyColorScheme>>[
        MyColorScheme.darkScheme,
      ],
      scaffoldBackgroundColor: ColorPalette.backgroundColorDark,
      textTheme: textDarkTheme,
      primaryTextTheme: textDarkTheme,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: ColorPalette.primaryColorDark,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(cursorColor: ColorPalette.titleColorDark),
      fontFamily: FontPalette.themeFont,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorPalette.backgroundColorDark,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ColorPalette.cardColorDark,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: ColorPalette.cardColorDark,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: ColorPalette.titleColorDark,
        ),
      ),
      dialogBackgroundColor: ColorPalette.backgroundColorDark,
      dialogTheme: DialogTheme(
        backgroundColor: ColorPalette.backgroundColorDark,
        iconColor: ColorPalette.titleColorDark,
      ),
      iconTheme: IconThemeData(color: ColorPalette.titleColorDark),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorPalette.primaryColorDark,
        ),
      ),
    );
  }

  static TextTheme get textDarkTheme {
    return Typography.englishLike2018.apply(
      fontSizeFactor: 0.8,
      bodyColor: ColorPalette.titleColorDark,
      fontFamily: FontPalette.themeFont,
    );
  }

  static TextTheme get textLightTheme {
    return Typography.englishLike2018.apply(
      fontSizeFactor: 0.8,
      bodyColor: ColorPalette.titleColor,
      fontFamily: FontPalette.themeFont,
    );
  }
}
