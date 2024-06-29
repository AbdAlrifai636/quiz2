import 'package:flutter/material.dart';

import '../core/data/pages_data/on_boarding/on_boarding_data.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/style_manager.dart';
import '../core/utils/values_manager.dart';

class CustomRichText extends StatelessWidget {
  CustomRichText({super.key,required this.imageEmpty});
  bool imageEmpty ;
  @override
  Widget build(BuildContext context) {
    return imageEmpty == true
        ? RichText(
            maxLines: 2,
            text: TextSpan(
                text: OnBoardingData.onBoardingData.subTitle,
                style: StyleManage.h4MediumTextStyle(
                    color: ColorManager.whiteGrey)),
          )
        : RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: OnBoardingData.onBoardingData.title,
                  style: StyleManage.h1BoldTextStyle(color: ColorManager.white),
                ),
                WidgetSpan(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                    child: Image(
                      image: AssetImage(
                        OnBoardingData.onBoardingData.iconImage,
                      ),
                      height: AppSize.s40,
                      width: AppSize.s30,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
