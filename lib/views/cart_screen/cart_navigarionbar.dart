import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me/controller/home_controller.dart';
import 'package:me/model/new_product_model.dart';
import 'package:me/views/cart_screen/payment_options.dart';

class Cart_Navigation_Bar extends StatefulWidget {
   Cart_Navigation_Bar({super.key, this.model});

  NewProductModel? model;

  @override
  State<Cart_Navigation_Bar> createState() => _Cart_Navigation_BarState();
}

class _Cart_Navigation_BarState extends State<Cart_Navigation_Bar> {
  NewProductModel? model;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: ( homcon) {

      //int sum = homcon.mycart.fold(0, (previousValue, element) => previousValue + element.price);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('My Carts name',style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text('    Deliver to Tradly Team, 75119',style: TextStyle(fontSize: 20),textAlign: TextAlign.left,)),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text('Kualalumpur, Malaysia',style: TextStyle(color: Colors.black45,fontSize: 20,),),
                                SizedBox(width: 30,),
                                ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff33907C),
                                      fixedSize: Size(87, 23),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      )

                                  ),
                                  child: Text("Follow", style: TextStyle(fontSize: 15,color: Colors.white),),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )]
                  ),
                  child: ListView.builder(
                    itemCount: homcon.mycart.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: ( context,  index) {
                      NewProductModel? model = homcon.mycart.elementAt(index);
                      return  Container(
                      height: 210,
                      width: double.infinity,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('${model.img}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 170,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(' ${model.title} \n \n \$ ${model.price} \n \n Qty : 1',style: TextStyle(fontSize: 20),textAlign: TextAlign.left,)),
                                SizedBox(height: 10,),
/*
                              Divider(
                                color: Colors.black,
                                height: 10,
                                thickness: 2,
                                indent: 20,         // Empty space to the leading edge of the divider
                                endIndent: 20,
                              ),
*/
/*
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text('\$25',style: TextStyle(color: Color(0xff33907C),fontSize:20),),
                                  SizedBox(width: 10,),
                                  Text('\$50',style: TextStyle(color: Colors.black,fontSize: 20,decoration: TextDecoration.lineThrough),),
                                  SizedBox(width: 10,),
                                  Text('\$50  50% off ',style: TextStyle(color: Colors.black,fontSize: 20,),)
                                ],
                              )
*/
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(
                                child: TextButton(onPressed: (){
                                  homcon.removetocart(index);
                                },
                                    child: Text("Remove",style: TextStyle(fontSize: 20,color: Colors.red),)),
                              )
                            ],
                          ),

/*
                        Positioned(
                           child: Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 0,
                            color: Colors.black,
                        ),
                         ),
*/
                        ],
                      ),
                    );

                    },),
                ),
                Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          SizedBox(height: 10,),
                          Text('Price Details',style: TextStyle(fontSize: 25),),
                          Positioned(
                            top: 40,
                            left: 1,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(' Price ( 1 item) \n Delivery Fee ',style: TextStyle(fontSize: 20),textAlign: TextAlign.left,)),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 45,
                            left: 300,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(' \$${25} \n Info',style: TextStyle(fontSize: 20),textAlign: TextAlign.left,)),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ),

                          Positioned(
                            top: 120,
                            left: 1,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(' Total Amount  ',style: TextStyle(fontSize: 25),textAlign: TextAlign.left,)),
                                SizedBox(height: 10,),
/*
                            Divider(
                              color: Colors.red,
                              thickness: 2,
                              indent: 50,     // Left indent
                              endIndent: 100, // Right indent
                            ),
*/
                              ],
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 300,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(' \$ ${homcon.mycart.length * 25 } ',style: TextStyle(fontSize: 25),textAlign: TextAlign.left,)),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.white,
                      child:Column(
                        children: [
                          ElevatedButton(onPressed: (){
                            Get.to(RadioExample());
/*
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Add_To_Card()),
                          );
*/
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff33907C),
                                fixedSize: Size(300, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )

                            ),
                            child: Text("Buy", style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                        ],
                      ),

                    ),

                  ],
                ),
              ],
            ),
          ),

        ),
      );
    },);
  }
}
