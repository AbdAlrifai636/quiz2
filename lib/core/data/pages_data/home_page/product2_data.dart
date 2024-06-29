
import 'package:quiz2/core/utils/color_manager.dart';

import '../../../../models/home_page_model/product_more.dart';

class ProductMoreData {
  static List<ProductMoreMode> productMore = [
   ProductMoreMode(title: "356", subTitle: "Your total savings", color: ColorManager.yellow , type: "USD"),
    ProductMoreMode(title: "215", subTitle: "Your time saved", color: ColorManager.whiteGrey,type:  "HRS"),
    ProductMoreMode(title: "255", subTitle: "Your total savings", color: ColorManager.darkBlue,type: "USD"),
    ProductMoreMode(title: "384", subTitle: "Your time saved", color: ColorManager.yellow, type:  "USD"),


  ];
}