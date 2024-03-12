part of 'home_imports.dart';

class HomeTabBarView extends StatelessWidget {
  const HomeTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = HomeCubit.of(context);
    return Expanded(
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.homeState == RequestState.success) {
            return TabBarView(
              controller: cubit.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: HomeCubit.of(context)
                  .listOfStatusTypes
                  .map(
                      (e) => ListOfOrdersWidget(listOfBills: cubit.listOfBills))
                  .toList(),
            );
          } else {
            return const ListOfOrdersShimmer();
          }
        },
      ),
    );
  }
}
