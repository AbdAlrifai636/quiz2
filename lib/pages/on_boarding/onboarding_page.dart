import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz2/core/data/pages_data/on_boarding/on_boarding_data.dart';
import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';
import 'package:quiz2/models/local/on_boarding_model/on_boarding_model.dart';
import 'package:quiz2/pages/grocery_home_page/page_view.dart';

import 'package:quiz2/widgets/custom_button.dart';
import 'package:quiz2/widgets/custom_rich_text.dart';

import '../../core/const/image_url.dart';
import '../../core/utils/style_manager.dart';
import '../grocery_home_page/grocery_home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p30, horizontal: AppPadding.p40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: AppSize.s40,),
                CustomRichText(imageEmpty: false),
                SizedBox(
                  height: AppSize.s20,
                ),
                CustomRichText(imageEmpty: true),
              ],
            ),
            Center(
              child: Container(
                width: AppSize.s100,
                height: AppSize.s100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage(ImageUrl.onboardingImage),
                        fit: BoxFit.cover)),
              ),
            ),
            CustomButton(
              onPressed: () {
                Get.off(PageViewForNav());
              },
            ),
          ],
        ),
      ),
    );
  }
}
