import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quiz2/controller/category_controller.dart';
import 'package:quiz2/controller/navication_bar/navication_bar.dart';
import 'package:quiz2/core/data/pages_data/home_page/category_data.dart';
import 'package:quiz2/core/data/pages_data/home_page/list_of_category_data.dart';
import 'package:quiz2/core/data/pages_data/home_page/recommended_data.dart';
import 'package:quiz2/core/data/pages_data/on_boarding/on_boarding_data.dart';
import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/string_manager.dart';
import 'package:quiz2/core/utils/style_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';
import 'package:quiz2/pages/product/product_page.dart';

import '../../core/data/pages_data/home_page/product_data.dart';
import '../../widgets/grocery_home/Icon_with_number.dart';

class CategoryPage2 extends StatelessWidget {
  CategoryPage2({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  CategoryController categoryController = CategoryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            stretch: true,
            pinned: true,
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
                        Icon(Icons.search, size: 25, color: ColorManager.white),
                        SizedBox(width: AppPadding.p16),
                        IconWithNumber(
                          numberOfNotification: "3",
                          color: ColorManager.darkYellow,
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Text("Shop",
                        style: StyleManage.h1RegularTextStyle(
                            color: ColorManager.white)),
                    const SizedBox(height: AppSize.s10),
                    Text("By Category",
                        style: StyleManage.h1BoldTextStyle(
                            color: ColorManager.white)),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: AppSize.s60,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: PageController(viewportFraction: 0.5),
                itemCount: ProductData.product.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      categoryController.isSelected(index);
                    },
                    child: Obx(
                      () => Container(
                        width: AppSize.s100,
                        margin: const EdgeInsets.all(AppPadding.p8),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.whiteGrey),
                          color: categoryController.selectedIndex.value == index
                              ? ColorManager.yellow
                              : ColorManager.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 160,
                              child: Center(
                                child: Text(
                                  CategoryDat.categoryData[index].title,
                                  style: StyleManage.b2SemiBoldTextStyle(
                                    color: categoryController
                                                .selectedIndex.value ==
                                            index
                                        ? ColorManager.white
                                        : ColorManager.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
                  onTap: (){
                    Get.to(ProductPage());
                  },
                  child: Container(
                    //width: AppSize.s100 * 2.6,
                    height: AppSize.s100 * 1.68,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppSize.s128,
                          height: AppSize.s100 * 1.68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ListOfCategoryData
                                .listOfCategoryData[index].color,
                          ),
                          child: UnconstrainedBox(
                            child: Container(
                              width: AppSize.s70,
                              height: AppSize.s70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      OnBoardingData.onBoardingData.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(AppPadding.p16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                    text: ListOfCategoryData
                                        .listOfCategoryData[index].title,
                                    style: StyleManage.h4BoldTextStyle(),
                                  )),
                                  SizedBox(height: AppSize.s10,),
                                  RichText(
                                      text: TextSpan(
                                    text: ListOfCategoryData
                                        .listOfCategoryData[index].subTitle,
                                    style: StyleManage.b1RegularTextStyle(),
                                  ))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: ListOfCategoryData
                                              .listOfCategoryData[index]
                                              .createFeom,
                                          style: StyleManage.b2RegularTextStyle(
                                              color: ColorManager.grey))),
                                  SizedBox(height: AppSize.s10,),
                                  RichText(
                                      text: TextSpan(
                                          text: ListOfCategoryData
                                              .listOfCategoryData[index].Price,
                                          style: StyleManage.b1RegularTextStyle(
                                              color: ColorManager.blue)))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: ProductData.product.length,
            ),
          ),
        ],
      ),
    );
  }
}
