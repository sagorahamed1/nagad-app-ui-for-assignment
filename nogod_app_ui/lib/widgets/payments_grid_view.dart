import 'package:flutter/widgets.dart';
import 'package:nogod_app_ui/data_class/grid_view_item.dart';

class PaymentsGridView extends StatelessWidget {
  PaymentsGridView({super.key});

  final List<GridViewItem> PaymentsGridViewItems = [
    GridViewItem(image: "assets/merchart_pay.png", label: "Merchart Pay"),
    GridViewItem(image: "assets/bill_pay.png", label: "Bill Pay"),
    GridViewItem(image: "assets/emi_payment.png", label: "EMI Payment"),
    GridViewItem(image: "assets/donation.png", label: "Donation"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: PaymentsGridViewItems.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 14/19,
          crossAxisCount: 4),
      itemBuilder: (context, index) {
        var items = PaymentsGridViewItems[index];
        return Container(
          padding: EdgeInsets.all(7),
          child: Column(
            children: [
              Image.asset(items.image),
              Container(
                margin: EdgeInsets.only(left: 7, top: 7),
                  child: Text(items.label, style: TextStyle(fontSize: 11),)),
            ],
          ),
        );
      },
    );
  }
}
