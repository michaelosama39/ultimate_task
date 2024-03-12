import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ultimate_task/core/customs/loading_button.dart';
import 'package:ultimate_task/core/res/values_manager.dart';
import '../../../../../core/customs/custom_dialog.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/res/enums.dart';
import '../../../../../core/res/text_style_manager.dart';
import '../manager/change_lang_data.dart';
import 'lang_card.dart';

showChangeLangDialog(BuildContext context,
    {required Function(LangEnum) callback}) {
  showCustomDialog(
    context,
    borderRadius: BorderRadius.circular(20.r),
    child: ChangeLangView(callback: callback),
  );
}

class ChangeLangView extends StatelessWidget {
  ChangeLangView({Key? key, required this.callback}) : super(key: key);
  final Function callback;
  final ChangeLangData data = ChangeLangData();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Language',
            style: TextStyleManager.primaryS12BoldStyle,
          ),
          SizedBox(height: AppSize.sH20),
          ValueListenableBuilder(
            valueListenable: data.lang,
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => data.changeLang(LangEnum.en),
                      child: LangCard(
                        value: value!,
                        langEnum: LangEnum.en,
                        img: AssetsManager.englishFlag,
                        title: 'English',
                        subTitle: 'English',
                      ),
                    ),
                  ),
                  SizedBox(width: AppSize.sW10),
                  Expanded(
                      child: InkWell(
                    onTap: () => data.changeLang(LangEnum.ar),
                    child: LangCard(
                      value: value,
                      langEnum: LangEnum.ar,
                      img: AssetsManager.arabicFlag,
                      title: 'العربية',
                      subTitle: 'Arabic',
                    ),
                  )),
                ],
              );
            },
          ),
          SizedBox(height: AppSize.sH10),
          LoadingButton(
            title: 'Apply',
            borderRadius: 12.r,
            btnKey: GlobalKey(),
            onTap: () => callback(data.lang.value),
          ),
        ],
      ),
    );
  }
}
