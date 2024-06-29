import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz2/core/utils/values_manager.dart';

import 'color_manager.dart';

class IconManager{

  static const  searchIcon = Icon(Icons.search, color: ColorManager.white);
  static const  shopIcon = Icon(Icons.food_bank_outlined, color: Colors.white, size: 40,);
  static const  arrowDown =  const FaIcon(
    FontAwesomeIcons.chevronDown,
    size: AppSize.s20,
    color: ColorManager.white,
  );
}