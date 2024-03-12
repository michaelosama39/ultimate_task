part of 'home_imports.dart';

class ListOfOrdersShimmer extends StatelessWidget {
  const ListOfOrdersShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.pW16),
      itemBuilder: (context, index) {
        return CustomShimmer(height: AppSize.sH100);
      },
    );
  }
}
