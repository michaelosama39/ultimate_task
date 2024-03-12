part of 'home_imports.dart';

class ListOfOrdersWidget extends StatelessWidget {
  const ListOfOrdersWidget({Key? key, required this.listOfBills})
      : super(key: key);
  final List<BillItemModel> listOfBills;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfBills.length,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.pW16),
      itemBuilder: (context, index) {
        return OrderCard(billItemModel: listOfBills[index]);
      },
    );
  }
}
