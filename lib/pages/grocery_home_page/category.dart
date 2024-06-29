import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz2/core/data/pages_data/home_page/recommended_data.dart';
import 'package:quiz2/core/data/pages_data/on_boarding/on_boarding_data.dart';
import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/string_manager.dart';
import 'package:quiz2/core/utils/style_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';
import '../../widgets/grocery_home/Icon_with_number.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});
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
                style: StyleManage.h3RegularTextStyle(color: ColorManager.white)),
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
                    Text("Shop", style: StyleManage.h1RegularTextStyle(color: ColorManager.white)),
                    const SizedBox(height: AppSize.s10),
                    Text("By Category", style: StyleManage.h1BoldTextStyle(color: ColorManager.white)),
                  ],
                ),
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
                  return Container(
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