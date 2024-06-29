import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz2/core/const/image_url.dart';
import 'package:quiz2/core/utils/color_manager.dart';
import 'package:quiz2/core/utils/style_manager.dart';
import 'package:quiz2/core/utils/values_manager.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final PageController _controller = PageController();

  int _currentPage = 0;
  double rating = 0.0;
  String dropDownValue = "";
  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: AppSize.s100*2.1,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [

                PageView(
                  controller: _controller,
                  children: [
                    Image.network(
                      ImageUrl.onboardingImage,
                      fit: BoxFit.fill,
                    ),
                    Image.network(
                      ImageUrl.onboardingImage,
                      fit: BoxFit.fill,
                    ),
                    Image.network(
                      ImageUrl.onboardingImage,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),

                Positioned(
                  top: AppSize.s100*2,
                  left: AppSize.s128,
                  child: Row(
                    children: [
                      Container(
                        width: AppSize.s30,
                        height: AppSize.s6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: _currentPage == 0
                              ? ColorManager.yellow
                              : ColorManager.grey,
                        ),
                      ),
                      Card(),
                      Container(
                        width: AppSize.s30,
                        height: AppSize.s6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: _currentPage == 1
                              ? ColorManager.yellow
                              : ColorManager.grey,
                        ),
                      ),
                      Card(),
                      Container(
                        width: AppSize.s30,
                        height: AppSize.s6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: _currentPage == 2
                              ? ColorManager.yellow
                              : ColorManager.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color:ColorManager.white,
              ),
              margin: EdgeInsets.all(AppMargin.m8),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p12*2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Thin Choise Top\n Orange',
                            style: StyleManage.h2MediumTextStyle())),
                    SizedBox(
                      height: AppSize.s20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: '\$34.70/KG',
                                style: StyleManage.b1SemiBoldTextStyle(color: ColorManager.blue))),
                        Container(
                          width: AppSize.s70,
                          height: AppSize.s20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorManager.blue,
                          ),
                          child: Center(
                            child: RichText(
                                text: TextSpan(
                                    text: '\$22.04 OFF',
                                    style: StyleManage.labelRegularTextStyle(color: ColorManager.white))),
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Reg: \$56.70 USD',
                                style: StyleManage.b2RegularTextStyle(
                                    color: ColorManager.grey))),
                      ],
                    ),
                    SizedBox(
                      height: AppSize.s30,
                    ),
                    Row(
                      children: [
                        PannableRatingBar(
                          rate: rating,
                          items: List.generate(5, (index) =>
                          const RatingWidget(
                            selectedColor: ColorManager.yellow,
                            unSelectedColor: Colors.grey,
                            child: Icon(
                              Icons.star,
                              size: AppSize.s30,
                            ),
                          )),
                          onChanged: (value) { // the rating value is updated on tap or drag.
                            setState(() {
                              rating = value;
                            });
                          },
                        ),
                        RichText(
                            text: TextSpan(
                                text: '110 Reviews',
                                style: StyleManage.b2RegularTextStyle(
                                    color: ColorManager.grey))),
                        ],
                    ),
                    SizedBox(
                      height: AppSize.s40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'Details',
                                style: StyleManage.b1RegularTextStyle(
                                    color: ColorManager.blackColor))),
                        SizedBox(height: AppSize.s10,),
                        RichText(
                            text: TextSpan(
                                text: 'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
                                style: StyleManage.b1RegularTextStyle(
                                    color: ColorManager.grey))),
                      ],
                    ),
                    SizedBox(
                      height: AppSize.s40,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: AppSize.s20,
                          child: Row( // Use Row for horizontal layout
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton<String>(
                                value: dropDownValue,
                                iconEnabledColor:ColorManager.white,
                                style: StyleManage.h4MediumTextStyle(),
                                underline: Container(),
                                items: [
                                  DropdownMenuItem<String>(

                                      value: dropDownValue,
                                      child: Text(
                                        "Nutritional facts",
                                        style: StyleManage.b1RegularTextStyle(
                                            color: ColorManager.blackColor),
                                      )),
                                ],
                                onChanged: (String? newValue) {
                                  dropDownValue = newValue!;
                                },
                              ),
                              const FaIcon( // Use const constructor for performance
                                FontAwesomeIcons.chevronDown,
                                size: AppSize.s20,
                                color: ColorManager.blackColor,
                              ),
                            ],
                          ),
                        ),
                         Divider(),
                        SizedBox(
                          height: AppSize.s20,
                          child: Row( // Use Row for horizontal layout
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content horizontally
                            children: [
                              DropdownButton<String>(
                                value: dropDownValue,
                                iconEnabledColor:ColorManager.white,
                                style: StyleManage.h4MediumTextStyle(),
                                underline: Container(),
                                items: [
                                  DropdownMenuItem<String>(

                                      value: dropDownValue,
                                      child: Text(
                                        "Reviews",
                                        style: StyleManage.b1RegularTextStyle(
                                            color: ColorManager.blackColor),
                                      )),
                                ],
                                onChanged: (String? newValue) {
                                  dropDownValue = newValue!;
                                },
                              ),
                               const FaIcon( // Use const constructor for performance
                                FontAwesomeIcons.chevronDown,
                                size: AppSize.s20,
                                color: ColorManager.blackColor,
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(
                      height: AppSize.s20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: AppSize.s70*2,
                          height: AppSize.s60,
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.blackColor),
                            borderRadius: BorderRadius.circular(25),
                            color: ColorManager.white,
                          ),
                          child: Center(
                            child: RichText(
                                text: TextSpan(
                                    text: 'Add To Cart',
                                    style: StyleManage.button1TextStyle())),
                          ),
                        ),
                        Container(
                          width: AppSize.s70*2,
                          height: AppSize.s60,
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.white),
                            borderRadius: BorderRadius.circular(25),
                            color: ColorManager.blue,
                          ),
                          child: Center(
                            child: RichText(
                                text: TextSpan(
                                    text: 'Buy Now',
                                    style: StyleManage.button1TextStyle())),
                          ),
                        ),
                      ],

                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
