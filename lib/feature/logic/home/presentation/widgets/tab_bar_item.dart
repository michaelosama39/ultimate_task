part of 'home_imports.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({Key? key, required this.state, required this.value, required this.onTap}) : super(key: key);
  final DeliveryStatusTypesModel state;
  final DeliveryStatusTypesModel value;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: AnimatedContainer(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: AppMargin.mW5),
        padding: EdgeInsets.symmetric(horizontal: AppPadding.pW5),
        decoration: BoxDecoration(
          color: state == value ? ColorManager.primary : ColorManager.white,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Text(
          value.tYPNM ?? '',
          textAlign: TextAlign.center,
          style: state == value
              ? TextStyleManager.whiteS14SemiBoldStyle
              : TextStyleManager.primaryS14SemiBoldStyle,
        ),
      ),
    );
  }
}
