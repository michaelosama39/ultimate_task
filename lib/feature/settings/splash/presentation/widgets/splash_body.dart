part of 'splash_imports.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.backgroundSplash,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(AssetsManager.footerSplash),
                Image.asset(
                  AssetsManager.splashImg,
                  height: AppSize.sH200,
                  width: AppSize.sW270,
                ),
              ],
            ),
          ),
          Image.asset(
            AssetsManager.logo,
            height: AppSize.sH200,
            width: AppSize.sW270,
          ),
        ],
      ),
    );
  }
}
