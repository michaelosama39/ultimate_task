part of 'login_imports.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginHeader(),
        SizedBox(height: AppSize.sH30),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.pW16),
            child: Column(
              children: [
                SizedBox(height: AppSize.sH100),
                Text(
                  tr(context, AppStrings.welcomeBack),
                  style: TextStyleManager.primaryS29SemiBoldStyle,
                ),
                Text(
                  tr(context, AppStrings.loginDesc),
                  style: TextStyleManager.primaryS12MediumStyle,
                ),
                SizedBox(height: AppSize.sH40),
                const LoginForm(),
                const LoginAction(),
                SizedBox(height: AppSize.sH40),
                Image.asset(
                  AssetsManager.loginImgDelivery,
                  height: AppSize.sH170,
                  width: AppSize.sW195,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
