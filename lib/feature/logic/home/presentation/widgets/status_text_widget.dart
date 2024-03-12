part of 'home_imports.dart';

class StatusTextWidget extends StatelessWidget {
  const StatusTextWidget({Key? key, required this.billItemModel})
      : super(key: key);
  final BillItemModel billItemModel;

  @override
  Widget build(BuildContext context) {
    if (billItemModel.dLVRYSTATUSFLG == '1') {
      return Text(
        tr(context, AppStrings.newStatus),
        style: TextStyleManager.greenStatusS16SemiBoldStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    } else if (billItemModel.dLVRYSTATUSFLG == '2') {
      return Text(
        tr(context, AppStrings.deliveringStatus),
        style: TextStyleManager.greyStatusS16SemiBoldStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    } else {
      return Text(
        tr(context, AppStrings.returnedStatus),
        style: TextStyleManager.redS16SemiBoldStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
