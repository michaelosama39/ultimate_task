part of 'home_imports.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderOfHome(),
        SizedBox(height: AppSize.sH20),
        const HomeTabBar(),
        SizedBox(height: AppSize.sH20),
        const HomeTabBarView(),
      ],
    );
  }
}
