import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quiz2/controller/navication_bar/navication_bar.dart';
import 'package:quiz2/core/data/pages_data/home_page/product2_data.dart';
import 'package:quiz2/core/data/pages_data/home_page/recommended_data.dart';
import 'package:quiz2/core/data/pages_data/on_boarding/on_boarding_data.dart';

import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/string_manager.dart';
import 'package:quiz2/core/utils/style_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';

import '../../core/data/pages_data/home_page/product_data.dart';
import '../../widgets/grocery_home/sliver_app_bar.dart';

class GroceryHomePage2 extends StatelessWidget {
  GroceryHomePage2({super.key});
  bool dataIsEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBarGroceryHome(),
          SliverToBoxAdapter(
            child: dataIsEmpty
                ? Center(
              child: CircularProgressIndicator(),
            )
                : Container(
              height: AppSize.s123,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ProductData.product.length, // Number of items
                itemBuilder: (context, index) {
                  return Container(
                    width: AppSize.s100 * 1.6, // Adjust the width as needed
                    margin: EdgeInsets.all(AppSize.s8),
                    decoration: BoxDecoration(
                        color: ProductMoreData.productMore[index].color,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: ProductMoreData
                                      .productMore[index].title,
                                  style: StyleManage.h1BoldTextStyle()),
                            ),
                            RichText(
                              text: TextSpan(
                                  text:
                                  ProductMoreData.productMore[index].type,
                                  style: StyleManage.h1RegularTextStyle()),
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                              text: ProductMoreData
                                  .productMore[index].subTitle,
                              style: StyleManage.h4MediumTextStyle()),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p4),
              child: Text("Deals on Fruits & Tea",
                  style: StyleManage.h3BoldTextStyle()),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
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
                                      image: NetworkImage(
                                          OnBoardingData.onBoardingData.image),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: RecommendedData
                                      .recommended[index].title,
                                  style: StyleManage.b2SemiBoldTextStyle(),
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
                        ],
                      ),
                    ));
              },
              childCount: RecommendedData.recommended.length,
            ),
          ),
        ],
      ),
    );
  }
}
