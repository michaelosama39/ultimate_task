part of 'login_imports.dart';

class LoginAction extends StatelessWidget {
  const LoginAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
            child: Text(
              tr(context, AppStrings.showMore),
              style: TextStyleManager.primaryS14SemiBoldStyle,
            ),
            onPressed: () {},
          ),
        ),
        LoadingButton(
          title: tr(context, AppStrings.logIn),
          btnKey: LoginCubit.of(context).btnKey,
          onTap: () => LoginCubit.of(context).login(),
        ),
      ],
    );
  }
}
