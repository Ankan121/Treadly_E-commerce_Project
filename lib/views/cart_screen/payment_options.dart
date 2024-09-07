/*
import 'package:flutter/material.dart';

class Payment_Options extends StatefulWidget {
  const Payment_Options({super.key});

  @override
  State<Payment_Options> createState() => _Payment_OptionsState();
}

class _Payment_OptionsState extends State<Payment_Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back,color: Colors.white,),),
        backgroundColor: Colors.teal,
        title: Text('Payment Option',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:me/views/cart_screen/cart_navigarionbar.dart';
import 'package:me/views/cart_screen/order_complite.dart';
import 'package:me/views/home_screen/navigation_var.dart';


class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,),),
        backgroundColor: Colors.teal,
        title: Text('Payment Option',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: Text('Debit / Credit Card '),
                  leading: Radio<String>(
                    value: 'option1',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
/*
          SizedBox(
            height: 10,
          ),
*/
                Divider(),
                ListTile(
                  title: Text('Netbanking'),
                  leading: Radio<String>(
                    value: 'option2',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Cash on Delivery'),
                  leading: Radio<String>(
                    value: 'option3',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('Wallet'),
                  leading: Radio<String>(
                    value: 'option4',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deliver to Tradly Team, 75119', style:  TextStyle( fontSize: 20),),
                        Text('Kualalumpur, Malaysia'),
                      ],
                    ),
                  ),
                ),
               ElevatedButton(onPressed: (){},
                   child: Text('change'),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xff33907C),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(40),
                   )

                 ),
               ),
              ],
            ),

    ),
          SizedBox(height: 40,),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Deliver to Tradly Team, 75119', style:  TextStyle( fontSize: 20),),
                  Row(
                    children: [
                      Text('Price ( 1 item)', style: TextStyle(fontSize: 15),),
                      Text('\$25'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              boxShadow: [
              ]
            ),
            child:Column(
              children: [
                ElevatedButton(onPressed: (){
                  Get.to(Order_Complite_Page());
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff33907C),
                      fixedSize: Size(300, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                      )

                  ),
                  child: Text("Next", style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ],
            ),

          ),

        ],
      ),
    );
  }
}
