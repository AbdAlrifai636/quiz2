import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBoardingModel {
  String title;
  String subTitle;
  String image;
  String iconImage;
  String buttonText;
  FaIcon icon;

  OnBoardingModel(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.iconImage,
      required this.buttonText,
      required this.icon});
}
