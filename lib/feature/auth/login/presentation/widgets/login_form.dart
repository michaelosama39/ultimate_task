part of 'login_imports.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginCubit.of(context).formKey,
      child: Column(
        children: [
          CustomTextField(
            hint: tr(context, AppStrings.userId),
            controller: LoginCubit.of(context).userIdController,
            type: TextInputType.number,
            validate: (value) => value!.validateEmpty(context),
          ),
          CustomTextField(
            hint: tr(context, AppStrings.password),
            controller: LoginCubit.of(context).passwordController,
            validate: (value) => value!.validateEmpty(context),
          ),
        ],
      ),
    );
  }
}
