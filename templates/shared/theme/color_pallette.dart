import 'package:flutter/material.dart';

class ColorPalette {
  static Color get primaryColor => Color(0xFF3A5BCD);
  static Color get primaryColorDark => const Color(0xFF4163DF);

  static Color get titleColor => const Color(0xFF525A79);
  static Color get titleColorDark => const Color(0xFFFFFFFF);

  static Color get textColor => const Color(0xFF424242);
  static Color get textColorDark => const Color(0xFFE0E0E0);

  static Color get textColor2 => const Color(0xFF9CA1BC);
  static Color get textColor2Dark => const Color(0xFFE0E0E0);

  static Color get textColor3 => const Color(0xFFAAAAAA);
  static Color get textColor3Dark => const Color(0xFFE0E0E0);

  static Color get textColor4 => const Color(0xFF848DB0);
  static Color get textColor4Dark => const Color(0xFFE0E0E0);

  static Color get backgroundColor => const Color(0xFFF4F7FE);
  static Color get backgroundColorDark => const Color(0xFF110F21);

  static Color get subTitleColor => const Color(0xFFAFB8CB);
  static Color get subTitleColorDark => const Color(0xFF6C80AD);

  static Color get dividerColor => const Color(0xFFF7F8F8);
  static Color get dividerColorDark => const Color(0xFF212837);

  static Color get cardColor => const Color(0xFFFFFFFF);
  static Color get cardColorDark => const Color(0xFF2C2C2C);

  static Color get textFillColor => const Color(0xFFF1F4FF);
  static Color get textFillColorDark => const Color(0xFF13161B);

  static Color get textLabelColor => const Color(0xFFA0A4B9);
  static Color get textLabelColorDark => titleColor;

  static Color get shimmerColor => const Color(0xFFF3F6FE);
  static Color get shimmerColorDark => const Color(0xFF1A1A1A);

  static Color get shadowColor => const Color(0xFFF3F6FE);
  static Color get shadowColorDark => const Color(0xFF3A3F4E);

  static Color get borderColor => const Color(0xFFD3D3DC);
  static Color get borderColorDark => const Color(0xFF5B5B64);

  static Color get borderColor2 => const Color(0xFF707070);
  static Color get borderColor2Dark => const Color(0xFF3A3A3A);

  static Color get newsSourceColor => const Color(0xFF657598);
  static Color get newsSourceColorDark => const Color(0xFF657598);
  static Color get greyColor => const Color(0xFF939393);
  static Color get greyColorDark => const Color(0xFF939393);
  static Color get customColor => const Color(0xFF8897B8);
  static Color get customColorDark => const Color(0xFF8897B8);

  static Color get redColor => const Color(0xFFC92C31);
  static Color get greenColor => const Color(0xFF07967F);
  static Color get blueColor => const Color(0xFF0000FF);
  static Color get yellowColor => const Color(0xFFFFFF00);
  static Color get whiteColor => const Color(0xFFFFFFFF);
  static Color get blackColor => const Color(0xFF000000);

  static Color get dropDownColor => const Color(0xFFE3E8FF);

  static String get hexColor1 => '#26A17B';

  static const MaterialColor materialPrimary = MaterialColor(
    0xFF7494F4,
    <int, Color>{
      50: Color(0xFF063b87),
      100: Color(0xFF063b87),
      200: Color(0xFF063b87),
      300: Color(0xFF063b87),
      400: Color(0xFF063b87),
      500: Color(0xFF063b87),
      600: Color(0xFF063b87),
      700: Color(0xFF063b87),
      800: Color(0xFF063b87),
      900: Color(0xFF063b87),
    },
  );
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
