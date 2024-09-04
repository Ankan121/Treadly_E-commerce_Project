/*
import 'package:flutter/material.dart';

class Browse_Page extends StatefulWidget {
  const Browse_Page({super.key});

  @override
  State<Browse_Page> createState() => _Browse_PageState();
}

class _Browse_PageState extends State<Browse_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff33907C),
          elevation: 0,
          title: Text("Favorite",style: TextStyle(color: Colors.white,fontSize: 25),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Color(0xff33907C),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.only(left: 25,),
                            hintText: "Seacrch Product",
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 130,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 25,),
                                  hintText: "Sort by",
                                  hintStyle: TextStyle(color: Colors.white,),
                                  prefixIcon: Icon(Icons.sort,color: Colors.white,),
                                  //filled: true,
                                  //fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width:5,),
                            Container(
                              height: 40,
                              width: 130,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 25,),
                                  hintText: "Location",
                                  hintStyle: TextStyle(color: Colors.white),
                                  prefixIcon: Icon(Icons.location_on,color: Colors.white,),
                                  //filled: true,
                                  //fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              height: 40,
                              width: 130,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 25,),
                                  hintText: "Category",
                                  hintStyle: TextStyle(color: Colors.white),
                                  prefixIcon: Icon(Icons.view_list,color: Colors.white,),
                                  //filled: true,
                                  //fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide(color: Colors.white)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';

class Browse_Page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: ( homcon) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_rounded),
          ),
          title: Text('Favorite'),
          centerTitle: true,
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.75,
            crossAxisCount: 2,
        ),
         itemCount: homcon.favItems.length,
         itemBuilder: ( context,  index) {
          return SizedBox(
            height: 270.h,
            width: double.infinity.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                /*onTap: (){
                                    Get.to(ProductScreen(title: ankan.popular_product_item[index]['title'], img: ankan.popular_product_item[index]['img'], priceItm:  ankan.popular_product_item[index]['price'],yesorno: true,
                                      idname: ankan.popular_product_item[index]['id'],
                                    ));
                                  },*/
                child: Column(
                  children: [
                    //Text('${ankan.new_product_items[index]['title']}'),
                    Stack(
                      children: [Container(
                        height: 140.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          //color: Colors.redAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(homcon.favItems[index]['img']),
                            fit:  BoxFit.cover,
                          ),
                        ),
                      ),
                        IconButton(
                          onPressed: () {
                            //controller.removedtoFavorite(index);
                            homcon.removeTtems(index);
                          },
                          icon: Icon(Icons.favorite, color: Colors.teal,),
                        ),
                      ],
                    ),
                    Container(
                      height: 100.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            spreadRadius: 0,
                            blurRadius: 0.5,
                            offset: Offset(0,1),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${homcon.favItems[index]['title']}', style: TextStyle(fontSize: 20),),
                            Spacer(),
                            Row(
                              children: [
                                CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    child: Text('T', style: TextStyle(fontSize: 30),)),
                                SizedBox(width: 10,),
                                // Text('${homcon.favItems[index]['id']}',style: TextStyle(fontSize: 20),),
                                // Spacer(),
                                // Text('${homcon.favItems[index]['price']}',style: TextStyle(fontSize: 20,color: Colors.teal),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          );
        },
        ),
      );

    },);
  }
}