
import 'package:flutter/material.dart';
import 'package:quiz2/core/utils/values_manager.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';

class IconWithNumber extends StatelessWidget {
   IconWithNumber({super.key,this.numberOfNotification,this.color,this.textStyle});
  Color? color;
  String? numberOfNotification ;
  TextStyle? textStyle ;
  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        IconManager.shopIcon,
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(AppSize.s4),
            decoration: BoxDecoration(
              color:color!,
              borderRadius: BorderRadius.circular(12),
            ),
            constraints: const BoxConstraints(
              minWidth: 12,
              minHeight: 6,
            ),
            child: Text(
              numberOfNotification!,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
