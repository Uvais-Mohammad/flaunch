import 'package:flutter/material.dart';

import 'color_pallette.dart';
MyColorScheme myColorScheme(BuildContext context) {
  return Theme.of(context).extension<MyColorScheme>()!;
}

@immutable
class MyColorScheme extends ThemeExtension<MyColorScheme> {
  const MyColorScheme({
    required this.primaryColor,
    required this.titleColor,
    required this.backgroundColor,
    required this.subTitleColor,
    required this.dividerColor,
    required this.cardColor,
    required this.redColor,
    required this.greenColor,
    required this.textFillColor,
    required this.textLabelColor,
    required this.textColor,
    required this.textColor2,
    required this.textColor3,
    required this.textColor4,
    required this.shimmerColor,
    required this.shadowColor,
    required this.borderColor,
    required this.newsSourceColor,
  });

  final Color primaryColor;
  final Color titleColor;
  final Color backgroundColor;
  final Color subTitleColor;
  final Color dividerColor;
  final Color cardColor;
  final Color redColor;
  final Color greenColor;
  final Color textFillColor;
  final Color textLabelColor;
  final Color textColor;
  final Color textColor2;
  final Color textColor3;
  final Color textColor4;
  final Color shimmerColor;
  final Color shadowColor;
  final Color borderColor;
  final Color newsSourceColor;  
  @override
  ThemeExtension<MyColorScheme> copyWith({
    Color? primaryColor,
    Color? titleColor,
    Color? backgroundColor,
    Color? subTitleColor,
    Color? dividerColor,
    Color? cardColor,
    Color? redColor,
    Color? greenColor,
    Color? textFillColor,
    Color? textLabelColor,
    Color? textColor,
    Color? textColor2,
    Color? textColor3,
    Color? textColor4,
    Color? shimmerColor,
    Color? shadowColor,
    Color? borderColor,
    Color? newsSourceColor,
    }) {
    return MyColorScheme(
      primaryColor: primaryColor ?? this.primaryColor,
      titleColor: titleColor ?? this.titleColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      subTitleColor: subTitleColor ?? this.subTitleColor,
      dividerColor: dividerColor ?? this.dividerColor,
      cardColor: cardColor ?? this.cardColor,
      redColor: redColor ?? this.redColor,
      greenColor: greenColor ?? this.greenColor,
      textFillColor: textFillColor ?? this.textFillColor,
      textLabelColor: textLabelColor ?? this.textLabelColor,
      textColor: textColor ?? this.textColor,
      textColor2: textColor2 ?? this.textColor2,
      textColor3: textColor3 ?? this.textColor3,
      textColor4: textColor4 ?? this.textColor4,
      shimmerColor: shimmerColor ?? this.shimmerColor,
      shadowColor: shadowColor ?? this.shadowColor,
      borderColor: borderColor ?? this.borderColor,
      newsSourceColor: newsSourceColor ?? this.newsSourceColor,
    );
  }

  @override
  ThemeExtension<MyColorScheme> lerp(
    covariant ThemeExtension<MyColorScheme>? other,
    double t,
  ) {
    if (other is! MyColorScheme) {
      return this;
    }

    return MyColorScheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      subTitleColor: Color.lerp(subTitleColor, other.subTitleColor, t)!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      cardColor: Color.lerp(cardColor, other.cardColor, t)!,
      redColor: Color.lerp(redColor, other.redColor, t)!,
      greenColor: Color.lerp(greenColor, other.greenColor, t)!,
      textFillColor: Color.lerp(textFillColor, other.textFillColor, t)!,
      textLabelColor: Color.lerp(textLabelColor, other.textLabelColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      textColor2: Color.lerp(textColor2, other.textColor2, t)!,
      textColor3: Color.lerp(textColor3, other.textColor3, t)!,
      textColor4: Color.lerp(textColor4, other.textColor4, t)!,
      shimmerColor: Color.lerp(shimmerColor, other.shimmerColor, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      newsSourceColor: Color.lerp(newsSourceColor, other.newsSourceColor, t)!,
    );
  }

  static MyColorScheme lightScheme = MyColorScheme(
    primaryColor: ColorPalette.primaryColor,
    titleColor: ColorPalette.titleColor,
    backgroundColor: ColorPalette.backgroundColor,
    subTitleColor: ColorPalette.subTitleColor,
    dividerColor: ColorPalette.dividerColor,
    cardColor: ColorPalette.cardColor,
    redColor: ColorPalette.redColor,
    greenColor: ColorPalette.greenColor,
    textFillColor: ColorPalette.textFillColor,
    textLabelColor: ColorPalette.textLabelColor,
    textColor: ColorPalette.textColor,
    textColor2: ColorPalette.textColor2,
    textColor3: ColorPalette.textColor3,
    textColor4: ColorPalette.textColor4,
    shimmerColor: ColorPalette.shimmerColor,
    shadowColor: ColorPalette.shadowColor,
    borderColor: ColorPalette.borderColor,
    newsSourceColor: ColorPalette.newsSourceColor,
  );

  static MyColorScheme darkScheme = MyColorScheme(
    primaryColor: ColorPalette.primaryColorDark,
    titleColor: ColorPalette.titleColorDark,
    backgroundColor: ColorPalette.backgroundColorDark,
    subTitleColor: ColorPalette.subTitleColorDark,
    dividerColor: ColorPalette.dividerColorDark,
    cardColor: ColorPalette.cardColorDark,
    redColor: ColorPalette.redColor, // Same as light theme
    greenColor: ColorPalette.greenColor, // Same as light theme
    textFillColor: ColorPalette.textFillColorDark,
    textLabelColor: ColorPalette.textLabelColorDark,
    textColor: ColorPalette.textColorDark,
    textColor2: ColorPalette.textColor2Dark,
    textColor3: ColorPalette.textColor3Dark,
    textColor4: ColorPalette.textColor4Dark,
    shimmerColor: ColorPalette.shimmerColorDark,
    shadowColor: ColorPalette.shadowColorDark,
    borderColor: ColorPalette.borderColorDark,
    newsSourceColor: ColorPalette.newsSourceColorDark,
  );
}
