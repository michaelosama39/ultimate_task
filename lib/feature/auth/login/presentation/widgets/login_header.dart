part of 'login_imports.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.sH130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: AppPadding.pW26),
              child: Image.asset(
                AssetsManager.logo,
                height: AppSize.sH70,
                width: AppSize.sW170,
              ),
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              RotatedBox(
                quarterTurns:
                    context.watch<LangCubit>().state.locale.languageCode == "en"
                        ? 0
                        : 3,
                child: Image.asset(
                  AssetsManager.circleHeaderRed,
                  height: AppSize.sH130,
                  width: AppSize.sW120,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: AppPadding.pW16),
                child: InkWell(
                  onTap: () => showChangeLangDialog(
                    context,
                    callback: (value) {
                      context.read<LangCubit>().onUpdateLanguage(value.name);
                      Go.back();
                    },
                  ),
                  child: Image.asset(
                    AssetsManager.languageIconWhite,
                    height: AppSize.sH27,
                    width: AppSize.sH27,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
