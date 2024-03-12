part of 'home_imports.dart';

class HeaderOfHome extends StatelessWidget {
  const HeaderOfHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: AppSize.sH130,
          width: double.infinity,
          color: ColorManager.red,
          alignment: AlignmentDirectional.centerEnd,
          child: RotatedBox(
            quarterTurns:
                context.watch<LangCubit>().state.locale.languageCode == "en"
                    ? 0
                    : 3,
            child: Image.asset(AssetsManager.circleHeaderPrimary),
          ),
        ),
        Row(
          children: [
            const Spacer(flex: 2),
            Image.asset(AssetsManager.deliveryManImg, height: AppSize.sH130),
            const Spacer(flex: 1),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppPadding.pH25, horizontal: AppPadding.pW16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  AppStorage.getUserNameInfo,
                  style:
                      TextStyleManager.whiteS25BoldStyle.copyWith(height: 1.1),
                  maxLines: 2,
                ),
              ),
              const Spacer(flex: 2),
              Flexible(
                flex: 2,
                child: InkWell(
                  onTap: () => showChangeLangDialog(
                    context,
                    callback: (value) =>
                        HomeCubit.of(context).changeLangFun(context, value),
                  ),
                  child: Container(
                    height: AppSize.sH24,
                    width: AppSize.sH24,
                    padding: EdgeInsets.all(AppPadding.pH4),
                    margin: EdgeInsets.symmetric(
                      vertical: AppMargin.mH20,
                      horizontal: AppMargin.mH20,
                    ),
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Image.asset(AssetsManager.languageIconPrimary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
