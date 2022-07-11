import 'package:flutter/material.dart';
import 'package:todays/constant/font_manager.dart';

TextStyle getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle regularText(
    {double fontSize = FontSizeManager.s14, required Color color}) {
  return getTextStyle(
      fontSize, FontConstant.fontfamily, FontWeightManager.regular, color);
}

TextStyle lightText(
    {double fontSize = FontSizeManager.s12, required Color color}) {
  return getTextStyle(
      fontSize, FontConstant.fontfamily, FontWeightManager.light, color);
}

TextStyle boldText(
    {double fontSize = FontSizeManager.s12, required Color color}) {
  return getTextStyle(
      fontSize, FontConstant.fontfamily, FontWeightManager.bold, color);
}

TextStyle semiBoldText(
    {double fontSize = FontSizeManager.s12, required Color color}) {
  return getTextStyle(
      fontSize, FontConstant.fontfamily, FontWeightManager.semibold, color);
}

TextStyle mediumText(
    {double fontSize = FontSizeManager.s12, required Color color}) {
  return getTextStyle(
      fontSize, FontConstant.fontfamily, FontWeightManager.medium, color);
}
