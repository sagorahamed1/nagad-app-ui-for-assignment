import 'package:flutter/material.dart';
import 'package:nogod_app_ui/widgets/appbar.dart';
import 'package:nogod_app_ui/widgets/others_grid_view.dart';
import 'package:nogod_app_ui/widgets/payments_grid_view.dart';
import 'package:nogod_app_ui/widgets/services_grid_view.dart';

class NogodHomePage extends StatelessWidget {
  const NogodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        elevation: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.view_list_outlined),label: "Transactions"),
          BottomNavigationBarItem(icon: Icon(Icons.groups),label: "Contracts"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "My Nagod"),
        ],
      ),


      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Appbar(),

              Container(
                margin: EdgeInsets.only(left: 10, top: 6),
                  child: const Text("Services",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)
              ),

              Container(
                  height: 260,
                  child: ServicesGridView()
              ),

              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Text("Payments",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)
              ),


              Container(
                  height: 130,
                  child: PaymentsGridView()
              ),

              SizedBox(
                height: 105,
                width: double.infinity,
                child: Image.asset("assets/appbar/img_2.png",fit: BoxFit.cover,),
              ),


              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Text("Others",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)
              ),

              Container(
                  height: 120,
                  child: OtherGridView(),
              ),

            ]
          ),
        ),
      ),
    );
  }
}


