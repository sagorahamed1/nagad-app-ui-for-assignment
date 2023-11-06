import 'package:flutter/material.dart';
import 'package:nogod_app_ui/data_class/grid_view_item.dart';

class OtherGridView extends StatelessWidget {
   OtherGridView({super.key});
  final List <GridViewItem> OtherGridVidwItems = [
    GridViewItem(image: "assets/contract_us.png", label: "Contact Us"),
    GridViewItem(image: "assets/ten_taka.png", label: "10 Taka Run"),
    GridViewItem(image: "assets/zakat.png", label: "Zakat"),
    GridViewItem(image: "assets/t20_quiz.png", label: "T20 Quiz"),
  ];

   @override
   Widget build(BuildContext context) {
     return GridView.builder(
       itemCount: OtherGridVidwItems.length,
       physics: NeverScrollableScrollPhysics(),
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           childAspectRatio: 14/19,
           crossAxisCount: 4),
       itemBuilder: (context, index) {
         var items = OtherGridVidwItems[index];
         return Container(
           padding: EdgeInsets.all(7),
           child: Column(
             children: [
               Image.asset(items.image),
               Container(
                   margin: EdgeInsets.only(left: 7, top: 7),
                   child: Text(items.label,style: TextStyle(fontSize: 12),)),
             ],
           ),
         );
       },
     );
   }
}
