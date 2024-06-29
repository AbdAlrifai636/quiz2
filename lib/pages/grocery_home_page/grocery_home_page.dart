import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:quiz2/controller/navication_bar/navication_bar.dart';
import 'package:quiz2/core/data/pages_data/home_page/recommended_data.dart';
import 'package:quiz2/core/data/pages_data/on_boarding/on_boarding_data.dart';
import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/string_manager.dart';
import 'package:quiz2/core/utils/style_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';
import 'package:quiz2/pages/grocery_home_page/grocery_home_page2.dart';

import '../../core/data/pages_data/home_page/product_data.dart';
import '../../widgets/grocery_home/sliver_app_bar.dart';

class GroceryHomePage extends StatelessWidget {
  GroceryHomePage({super.key});
  NavBarController navBarController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBarGroceryHome(),
          SliverToBoxAdapter(
            child: InkWell(
              onTap: (){
                Get.to(GroceryHomePage2());
              },
              child: SizedBox(
                height: AppSize.s123,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ProductData.product.length, // Number of items
                  itemBuilder: (context, index) {
                    return Container(
                      width: AppSize.s100 * 2.6, // Adjust the width as needed
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: ColorManager.yellow,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: AppSize.s70,
                            height: AppSize.s70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        OnBoardingData.onBoardingData.image),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 160,
                            child: RichText(
                              text: TextSpan(
                                  text: ProductData.product[index].details,
                                  style: StyleManage.h4MediumTextStyle(
                                      color: ColorManager.white)),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p4),
              child: Text(StringManger.recommended,
                  style: StyleManage.h1RegularTextStyle()),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: AppSize.s100 * 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: RecommendedData.recommended.length, // Number of items
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorManager.white),
                      width: AppSize.s128,
                      margin: EdgeInsets.all(AppMargin.m8),
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Container(
                                width: AppSize.s70,
                                height: AppSize.s70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                        image: NetworkImage(OnBoardingData
                                            .onBoardingData.image),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Divider(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                    text: RecommendedData
                                        .recommended[index].title,
                                    style:
                                    StyleManage.b2SemiBoldTextStyle(),
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                    text: RecommendedData
                                        .recommended[index].subTitle,
                                    style: StyleManage.labelRegularTextStyle(
                                        color: ColorManager.grey),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: ColorManager.white),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: AppSize.s8),
                                        child: RichText(
                                            text: TextSpan(
                                                text: "Unit",
                                                style: StyleManage
                                                    .labelRegularTextStyle(
                                                    color: ColorManager
                                                        .grey))),
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text: RecommendedData
                                                  .recommended[index].price,
                                              style: StyleManage
                                                  .labelMediumTextStyle())),
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundColor: ColorManager.blue,
                                    radius: AppSize.s10 + 3,
                                    child: FaIcon(
                                      FontAwesomeIcons.plus,
                                      size: AppSize.s10,
                                      color: ColorManager.white,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ));
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  height: AppSize.s100 * 2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, // Number of items
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: ColorManager.white),
                          width: AppSize.s128,
                          margin: EdgeInsets.all(AppMargin.m8),
                          child: Container());
                    },
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),

    );
  }
}
