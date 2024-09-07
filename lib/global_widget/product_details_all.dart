import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me/controller/home_controller.dart';
import 'package:me/model/new_product_model.dart';
import 'package:me/views/cart_screen/payment_options.dart';

import '../views/cart_screen/addto_cart.dart';
import '../views/cart_screen/cart_navigarionbar.dart';

class ProductScreen extends StatelessWidget {

   const ProductScreen({super.key,
     //this.title,  this.img,  this.priceItm,this.yesorno,  this.idname,
     this.model});

   final NewProductModel? model;

  @override
  Widget build(BuildContext context) {
    //print(priceItm);
    return GetBuilder<HomeController>(builder: ( homcon) {
      return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {Get.back(); }, icon: Icon(Icons.arrow_back_rounded),),
            backgroundColor: Colors.teal,
            title: Text('${model!.title}'),
          ),
          //extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${model!.img}"),fit: BoxFit.fill ),
                  ),
                ),
                Card(
                  //elevation: 2,
                  child: Container(
                    height: 100.h,
                    width: double.infinity.w,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${model!.title}', style: TextStyle(fontSize: 30),),
                        //yesorno == false ? Text('$title', style: TextStyle(fontSize: 30),) : Text("no data"),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${model!.price} ', style: TextStyle(fontSize: 30,color: Colors.teal),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 80.h,
                    width: double.infinity.w,
                    child: Row(
                      children: [
                        CircleAvatar(child: Text('T',style: TextStyle(fontSize: 30,color: Colors.white),),backgroundColor: Colors.teal,),
                        SizedBox(width: 20,),
                        Text('${model!.id}'),
                        Spacer(),
                        Container(
                          height: 30.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Follow',style: TextStyle(color: Colors.white),)),
                        ),
                        //ElevatedButton(onPressed: (){}, child: Text('Follow')),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 400,
                    width: double.infinity.w,
                    child: SingleChildScrollView(
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsum ut. Nisi vel adipiscing massa bibendum diam. '
                          'Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique '
                          'Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique '
                          'Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique '
                          'habitasse eu elementum sed. Aliquam eget lacus, arcu, adipiscing eget feugiat in dolor sagitti',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  child: Container(
                    height: 80.h,
                    width: double.infinity.w,
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          print(model);
                          homcon.addtocart(model);
                          // Get.to(
                          //     Cart_Navigation_Bar()
                          //     //RadioExample()
                          // );
                        },
                        child: Container(
                          height: 40.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Add To Card',style: TextStyle(fontSize: 20,color: Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),

                //BottomNavigationBar(items: items)



                /*
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                image: DecorationImage(
                  image: AssetImage(controller.new_product_items[index]['img']),
                ),
              ),
            );
          },
      ),
      */
              ],),
          ),
      );
    },

    );
  }
}
