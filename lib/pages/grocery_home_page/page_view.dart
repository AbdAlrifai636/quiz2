import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz2/pages/grocery_home_page/category.dart';
import 'package:quiz2/pages/grocery_home_page/category2.dart';
import 'package:quiz2/pages/grocery_home_page/grocery_home_page.dart';
import 'package:quiz2/pages/grocery_home_page/grocery_home_page2.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/values_manager.dart';

class PageViewForNav extends StatelessWidget {
  PageViewForNav({super.key});

  final PageController _pageController = PageController();
  RxInt indexBar = 0.obs;

  void _onPageChanged(int index) {
    indexBar.value = index;
  }

  void _onNavItemTapped(int index) {
    _pageController.jumpToPage(index);
    indexBar.value = index; // Update the selected index
  }

  bool isTrue(int index) {
    return indexBar.value == index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          GroceryHomePage(),
          GroceryHomePage2(),
          CategoryPage(),
          CategoryPage2(),
        ],
      ),
      bottomNavigationBar: Obx(
            () => CurvedNavigationBar(
          buttonBackgroundColor: isTrue(indexBar.value) ? ColorManager.blackColor : ColorManager.white,
          backgroundColor: Colors.transparent,
          color: ColorManager.white,
          height: AppSize.s70,
          index: indexBar.value,
          onTap: _onNavItemTapped,
          items: <Widget>[
            Icon(Icons.home_outlined, size: 30, color: isTrue(0) ? ColorManager.yellow : ColorManager.blackColor),
            Icon(Icons.category_outlined, size: 30, color: isTrue(1) ? ColorManager.yellow : ColorManager.blackColor),
            Icon(Icons.favorite_border, size: 30, color: isTrue(2) ? ColorManager.yellow : ColorManager.blackColor),
            Icon(Icons.more_vert_outlined, size: 30, color: isTrue(3) ? ColorManager.yellow : ColorManager.blackColor),
          ],
        ),
      ),
    );
  }
}
