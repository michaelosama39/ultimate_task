import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/res/color_manager.dart';
import '../../../../../core/res/enums.dart';
import '../../../../../core/res/text_style_manager.dart';
import '../../../../../core/res/values_manager.dart';

class LangCard extends StatelessWidget {
  const LangCard(
      {Key? key,
      required this.langEnum,
      required this.value,
      required this.img,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final LangEnum langEnum;
  final LangEnum value;
  final String img;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppPadding.pH6,
        horizontal: AppPadding.pW20,
      ),
      decoration: BoxDecoration(
        color: value == langEnum ? ColorManager.greenLight : ColorManager.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: value == langEnum ? ColorManager.green : ColorManager.blue,
          width: value == langEnum ? 1 : 0.2,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(img, height: AppSize.sH20, width: AppSize.sH20),
          Expanded(
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyleManager.blackS12SemiBoldStyle,
                ),
                Text(
                  subTitle,
                  style: TextStyleManager.blackS10mediumStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
