import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(
            color: Color(0xFFeb4622),
          ),
          child: Image.asset("assets/appbar/img_1.png"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,right: 100,left: 150),
          child: const Text("নগদ",style: TextStyle(fontSize: 33,color: Colors.white,fontWeight: FontWeight.w900),),
        ),

        Container(
          margin: const EdgeInsets.only(left: 300,top: 10),
          child: InkWell(onTap: (){},
              child: const Icon(Icons.notification_add_rounded,color: Colors.white,size: 29,)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40,left: 80),
          child: const Text("ডাক বিভাগের ডিজিটাল লেনদেন",style: TextStyle(fontSize: 15,color: Colors.white),),
        ),


        Container(
            margin: const EdgeInsets.only(top: 90,left: 85),
            height: 28,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 01),
                    height: 30,
                    width: 40,
                    child: Image.asset("assets/appbar/img.png")
                ),
                const Text("Tap for balance",style: TextStyle(fontSize: 15,color: Color(0xFFfb7245)),)
              ],
            )
        ),
      ],
    );
  }
}
