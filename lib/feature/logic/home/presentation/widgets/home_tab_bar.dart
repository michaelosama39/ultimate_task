part of 'home_imports.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.sH36,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: ColorManager.shadow,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: HomeCubit.of(context)
                  .listOfStatusTypes
                  .map(
                    (e) => TabBarItem(
                      state: HomeCubit.of(context).selectedTabStatus!,
                      value: e,
                      onTap: () => HomeCubit.of(context)
                          .changeStatusOfTabBar(selectedTabStatus: e),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
