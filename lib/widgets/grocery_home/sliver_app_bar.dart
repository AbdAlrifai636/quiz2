import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz2/widgets/grocery_home/Icon_with_number.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

class SliverAppBarGroceryHome extends StatelessWidget {
   SliverAppBarGroceryHome({super.key});
  String dropDownValue = "Green Way 3000, Sylhet";
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      floating: true,  // Allows the app bar to float as you scroll.
      pinned: true,    // Keeps the app bar pinned at the top.
      snap: true,      // Animates the app bar to snap into position.
      stretch: true,
      title: Text(StringManger.titleSliverAppBar,
          style:
          StyleManage.h3RegularTextStyle(color: ColorManager.white)),
      expandedHeight: AppSize.s100 * 2.6,
      backgroundColor: ColorManager.blue,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle
        ],
        background: Container(
          padding: const EdgeInsets.all(16.0),
          color: ColorManager.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                IconWithNumber(
                    numberOfNotification : "3",
                  color:  ColorManager.darkYellow,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )
                ],
              ),
            const   SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: StringManger.hintTextFieldOfSearch,
                  hintStyle: StyleManage.labelMediumTextStyle(
                      color: ColorManager.whiteGrey),
                  fillColor: ColorManager.blackBlue,
                  filled: true,
                  prefixIcon: IconManager.searchIcon,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringManger.deliveryTo,
                          style: StyleManage.labelRegularTextStyle(
                              color: ColorManager.whiteGrey),
                        ),
                        SizedBox(
                          height: AppSize.s20,
                          child: DropdownButton<String>(
                              value: dropDownValue,
                              icon: const FaIcon(
                                FontAwesomeIcons.chevronDown,
                                size: AppSize.s20,
                                color: ColorManager.white,
                              ),
                              style: StyleManage.h4MediumTextStyle(),
                              underline: Container(),
                              items: [
                                DropdownMenuItem<String>(
                                    value: dropDownValue,
                                    child: Text(
                                      "Green Way 3000, Sylhet\t",
                                      style: StyleManage
                                          .labelRegularTextStyle(
                                          color: ColorManager.white),
                                    )),
                              ],
                              onChanged: (String? newValue) {
                                dropDownValue = newValue!;
                              }),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringManger.withIn,
                          style: StyleManage.labelRegularTextStyle(
                              color: ColorManager.whiteGrey),
                        ),
                        SizedBox(
                          height: AppSize.s20,
                          child: DropdownButton<String>(
                              value: dropDownValue,
                              icon:IconManager.arrowDown,
                              style: StyleManage.h4MediumTextStyle(),
                              underline: Container(),
                              items: [
                                DropdownMenuItem<String>(
                                    value: dropDownValue,
                                    child: Text(
                                      "1 HOUR\t",
                                      style: StyleManage
                                          .labelRegularTextStyle(
                                          color: ColorManager.white),
                                    )),
                              ],
                              onChanged: (String? newValue) {
                                dropDownValue = newValue!;
                              }),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
