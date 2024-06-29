import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quiz2/pages/product/product_details.dart';

import '../../controller/category_controller.dart';
import '../../core/data/pages_data/home_page/category_data.dart';
import '../../core/data/pages_data/home_page/product_data.dart';
import '../../core/data/pages_data/home_page/recommended_data.dart';
import '../../core/data/pages_data/on_boarding/on_boarding_data.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';
import '../../widgets/grocery_home/Icon_with_number.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});
  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight:100,
            stretch: true,
            pinned: true,

            automaticallyImplyLeading :false,

            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           InkWell(
                               onTap: (){
                                 Get.back();
                               },
                               child: FaIcon(CupertinoIcons.back)),
                           SizedBox(width: AppPadding.p40),
                           Text("Big & Small Fishes",style: StyleManage.b2RegularTextStyle(),),
                         ],
                       ),
                   Row(
                     children: [
                       Icon(Icons.search, size: 25, color: ColorManager.blackColor),
                       SizedBox(width: AppPadding.p16),
            Stack(
              children: [
              Icon(Icons.food_bank_outlined, color: ColorManager.blackColor, size: 40,),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(AppSize.s4),
                    decoration: BoxDecoration(
                      color:ColorManager.darkYellow,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 4,
                    ),
                    child: Text(
                      "3",
                      style: TextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
                     ],
                   )
                      ],
                    ),

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
                                    color: categoryController.selectedIndex.value == index
                                        ? ColorManager.white
                                        : ColorManager.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(AppPadding.p8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: AppSize.s8,
                mainAxisSpacing: AppSize.s8,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return InkWell(
                    onTap: (){  Get.to(ProductDetails());},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorManager.white,
                      ),
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
                                    image: NetworkImage(OnBoardingData.onBoardingData.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
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
                                Text(
                                  RecommendedData.recommended[index].title,
                                  style: StyleManage.b2SemiBoldTextStyle(),
                                ),
                                Text(
                                  RecommendedData.recommended[index].subTitle,
                                  style: StyleManage.labelRegularTextStyle(color: ColorManager.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: RecommendedData.recommended.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
