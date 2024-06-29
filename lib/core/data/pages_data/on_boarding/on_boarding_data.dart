import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz2/core/utils/assets_manager.dart';
import 'package:quiz2/core/const/image_url.dart';
import 'package:quiz2/core/utils/string_manager.dart';

import '../../../../models/local/on_boarding_model/on_boarding_model.dart';

class OnBoardingData {
 static OnBoardingModel onBoardingData = OnBoardingModel(
      title: StringManger.titleOnBoarding,
      subTitle: StringManger.subTitleOnBoarding,
      image: ImageUrl.onboardingImage,
      iconImage: AssetsManager.houseIimage,
      buttonText: StringManger.buttonOnBoarding,
      icon: const FaIcon(FontAwesomeIcons.arrowRight));
}
