import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:quiz2/pages/grocery_home_page/grocery_home_page.dart';

import '../../pages/grocery_home_page/category.dart';
import '../../pages/grocery_home_page/category2.dart';
import '../../pages/grocery_home_page/grocery_home_page2.dart';
class NavBarController extends GetxController{

var  isColor = false;
  RxInt currentIndex = 0.obs;
  RxInt indexBar = 0.obs;
  void onTapeBar(index) {
    indexBar.value = index;
    onChangePage(indexBar.value);
  }
bool isTrue(int index){
    return     indexBar.value == index? isColor = true:isColor =false;

}

  void onTabTapped(int index) {
    currentIndex.value = index;

  }


  void onChangePage(index) {
    switch (index) {
      case 0:
        {
          Get.to(GroceryHomePage());
          //isColor =true;
        }
        break;
      case 1:
        {
          Get.to(GroceryHomePage2());
          //isColor =true;

        }
        break;
      case 2:
        {
          Get.to(CategoryPage());
         // isColor =true;

        }
        break;
      case 3:
        {
          Get.to(CategoryPage2());
          //isColor =true;

        }
        break;
      case 4:
      //Get.to(ProfileScreen());
        break;

    }
  }
}