
import 'package:flutter/material.dart';
import 'package:quiz2/core/utils/font_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';

import 'color_manager.dart';


class StyleManage {

// Text system

//********************************************************* Heading 01
  static TextStyle h1BoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s30,
        FontWeight fontWeight = FontWeightManager.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle h1SemiBoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s30,
        FontWeight fontWeight =  FontWeightManager.semiBold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle h1MediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s30,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h1RegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s30,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* Heading 02

  static TextStyle h2BoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s26,
        FontWeight fontWeight = FontWeightManager.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle h2SemiBoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s26,
        FontWeight fontWeight =  FontWeightManager.semiBold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle h2MediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s26,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h2RegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s26,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* Heading 03

  static TextStyle h3BoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s20,
        FontWeight fontWeight = FontWeightManager.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle h3SemiBoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s20,
        FontWeight fontWeight =  FontWeightManager.semiBold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle h3MediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s20,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h3RegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s20,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* Heading 04
  static TextStyle h4BoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s18,
        FontWeight fontWeight = FontWeightManager.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle h4SemiBoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s18,
        FontWeight fontWeight =  FontWeightManager.semiBold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle h4MediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s18,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle h4RegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s18,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* Body 01

  static TextStyle b1SemiBoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s16,
        FontWeight fontWeight =  FontWeightManager.semiBold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle b1MediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s16,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle b1RegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s16,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* Body 02

  static TextStyle b2SemiBoldTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s14,
        FontWeight fontWeight =  FontWeightManager.semiBold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }
  static TextStyle b2MediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s14,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle b2RegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s14,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* label
  static TextStyle labelMediumTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s12,
        FontWeight fontWeight =  FontWeightManager.medium}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle labelRegularTextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s12,
        FontWeight fontWeight =  FontWeightManager.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

//********************************************************* Button
  static TextStyle button1TextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s14,
        FontWeight fontWeight = FontWeightManager.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle button2TextStyle(
      {Color color = ColorManager.blackColor,
        double size = FontSize.s12,
        FontWeight fontWeight = FontWeightManager.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }



}
