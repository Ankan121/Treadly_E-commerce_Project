import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:me/views/cart_screen/cart_navigarionbar.dart';
import 'package:me/views/home_screen/navigation_var.dart';

class Order_Complite_Page extends StatefulWidget {
  const Order_Complite_Page({super.key});

  @override
  State<Order_Complite_Page> createState() => _Order_Complite_PageState();
}

class _Order_Complite_PageState extends State<Order_Complite_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Order Details'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              Get.to(Navigation_Var());
            }, icon: Icon(Icons.close))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Center(child: Image.asset('assets/product/img.png')),
            Text('Thanks for Order',style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
