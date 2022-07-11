import 'package:flutter/material.dart';
import 'package:todays/constant/color_manager.dart';
import 'package:todays/constant/font_manager.dart';
import 'package:todays/constant/style_manager.dart';

enum UpacharTheme {
  darkTheme,
  lightTheme,
}
final upacharThemeData = {
  UpacharTheme.lightTheme: ThemeData(
    brightness: Brightness.light,
    cardColor: ColorManager.darkColor,
    backgroundColor: ColorManager.greyColor.withOpacity(.3),
    textTheme: TextTheme(
      headline1: boldText(
          color: ColorManager.lightColor, fontSize: FontSizeManager.s14),
      subtitle1: mediumText(
          color: ColorManager.lightColor, fontSize: FontSizeManager.s12),
      subtitle2: lightText(
          color: ColorManager.lightColor, fontSize: FontSizeManager.s14),
      caption: regularText(color: ColorManager.greyColor1),
      bodyText1: regularText(color: ColorManager.greyColor),
      bodyText2: regularText(color: ColorManager.highlightText),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ColorManager.lightColor,
        elevation: 3,
        selectedItemColor: ColorManager.colorPrimary),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: ColorManager.colorPrimary),
      elevation: 0,
      shadowColor: ColorManager.colorPrimaryOpacity,
      titleTextStyle: regularText(
              fontSize: FontSizeManager.s16,
              color: ColorManager.colorPrimaryOpacity)
          .copyWith(fontWeight: FontWeight.w600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(ColorManager.colorPrimary),
    )),
    cardTheme: CardTheme(
      color: ColorManager.darkColor,
      shadowColor: ColorManager.greyColor,
      elevation: 4,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: regularText(color: ColorManager.darkColor),
      iconColor: ColorManager.highlightText,
    ),
    iconTheme: IconThemeData(color: ColorManager.highlightText),
  ),
  UpacharTheme.darkTheme: ThemeData(
      brightness: Brightness.dark,
      cardColor: ColorManager.lightColor,
      backgroundColor: ColorManager.darkColor.withOpacity(10),
      textTheme: TextTheme(
        headline1: semiBoldText(
            color: ColorManager.lightColor, fontSize: FontSizeManager.s16),
        subtitle1: mediumText(
            color: ColorManager.lightColor, fontSize: FontSizeManager.s14),
        subtitle2: mediumText(
            color: ColorManager.lightColor, fontSize: FontSizeManager.s12),
        caption: regularText(color: ColorManager.lightColor),
        bodyText1: regularText(color: ColorManager.lightColor),
        bodyText2: regularText(color: ColorManager.highlightText),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(ColorManager.greyColor1),
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.darkColor,
        selectedItemColor: ColorManager.lightColor,
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.darkColor,
          iconTheme: IconThemeData(color: ColorManager.lightColor),
          elevation: 0,
          shadowColor: ColorManager.greyColor1,
          titleTextStyle: regularText(
                  color: ColorManager.lightColor, fontSize: FontSizeManager.s16)
              .copyWith(fontWeight: FontWeight.w600)),
      cardTheme: CardTheme(
        color: ColorManager.darkColor,
        shadowColor: ColorManager.greyColor1,
        elevation: 4,
      ),
      inputDecorationTheme:
          InputDecorationTheme(iconColor: ColorManager.lightColor)),
};
