import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/style_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';

import '../core/data/pages_data/on_boarding/on_boarding_data.dart';

class CustomButton extends StatelessWidget {
  void Function() onPressed ;

  CustomButton({super.key,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s100*2.5,
      height:AppSize.s60,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          foregroundColor: ColorManager.blackColor,
          backgroundColor: ColorManager.white,
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 12), // Text and icon color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Rounded corners
          ),
          elevation: 5, // Elevation for shadow effect
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              OnBoardingData.onBoardingData.buttonText,
              style: StyleManage.b1SemiBoldTextStyle(),
            ),
            SizedBox(width: 8), // Space between text and icon
            OnBoardingData.onBoardingData.icon,
          ],
        ),
      ),
    );
  }
}
