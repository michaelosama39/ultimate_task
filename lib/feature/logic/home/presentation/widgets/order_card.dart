part of 'home_imports.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key, required this.billItemModel}) : super(key: key);
  final BillItemModel billItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.sH90,
      margin: EdgeInsets.symmetric(vertical: AppMargin.mH8),
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: ColorManager.shadow,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppPadding.pH4, horizontal: AppPadding.pW20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('#${billItemModel.bILLSRL}',
                      style: TextStyleManager.greyTextS12mediumStyle),
                  _rowOrderDetails(context),
                ],
              ),
            ),
          ),
          _arrowIconAndEndWidget(context, billItemModel.dLVRYSTATUSFLG!),
        ],
      ),
    );
  }

  _rowOrderDetails(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppPadding.pH4),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(tr(context, AppStrings.status),
                      style: TextStyleManager.greyTextS10mediumStyle),
                  SizedBox(height: AppSize.sH8),
                  StatusTextWidget(billItemModel: billItemModel),
                ],
              ),
            ),
            VerticalDivider(color: ColorManager.dividerColor),
            Expanded(
              child: Column(
                children: [
                  Text(tr(context, AppStrings.totalPrice),
                      style: TextStyleManager.greyTextS10mediumStyle),
                  SizedBox(height: AppSize.sH8),
                  Text(
                      '${double.parse(billItemModel.bILLAMT!).round()} ${tr(context, AppStrings.le)}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleManager.primaryS16SemiBoldStyle),
                ],
              ),
            ),
            VerticalDivider(color: ColorManager.dividerColor),
            Expanded(
              child: Column(
                children: [
                  Text(tr(context, AppStrings.date),
                      style: TextStyleManager.greyTextS10mediumStyle),
                  SizedBox(height: AppSize.sH8),
                  Text(billItemModel.bILLDATE!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyleManager.primaryS16SemiBoldStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _arrowIconAndEndWidget(BuildContext context, String status) {
    return Container(
      height: AppSize.sH90,
      width: AppSize.sW44,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.pW3),
      decoration: BoxDecoration(
        color: status == '1'
            ? ColorManager.greenStatus
            : status == '2'
                ? ColorManager.greyStatus
                : ColorManager.red,
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(8.r),
          bottomEnd: Radius.circular(8.r),
        ),
      ),
      child: Column(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  tr(context, AppStrings.orderDetails),
                  textAlign: TextAlign.center,
                  style: TextStyleManager.whiteS8RegularStyle,
                ),
                SizedBox(height: AppSize.sH6),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorManager.white,
                  size: AppSize.sH20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
