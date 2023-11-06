import 'package:flutter/widgets.dart';
import 'package:nogod_app_ui/data_class/grid_view_item.dart';

class ServicesGridView extends StatelessWidget {
  ServicesGridView({super.key});

  final List<GridViewItem> ServiceGridItems = [
    GridViewItem(image: "assets/send_maney.png", label: "Send Money"),
    GridViewItem(image: "assets/cash_out.png", label: "Cash Out"),
    GridViewItem(image: "assets/mobile_recharge.png", label: "Mobile Recharge"),
    GridViewItem(image: "assets/add_money.png", label: "Add Money"),
    GridViewItem(image: "assets/transfer_money.png", label: "Transfer Money"),
    GridViewItem(image: "assets/insurance.png", label: "Insurance"),
    GridViewItem(image: "assets/nagod_mala.png", label: "Nagod Mela"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: GridView.builder(
        itemCount: ServiceGridItems.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 14/19,
            crossAxisCount: 4),
        itemBuilder: (context, index) {
          var items = ServiceGridItems[index];
          return Container(
            padding: EdgeInsets.all(7),
            child: Column(
              children: [
                Image.asset(items.image),
                Container(
                    margin: EdgeInsets.only(left: 7,top:5),
                    child: Text(items.label,style: TextStyle(fontSize: 10),)),
              ],
            ),
          );
        },
      ),
    );
  }
}
