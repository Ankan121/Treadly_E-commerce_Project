import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me/global_widget/new_product.dart';
import '../../controller/home_controller.dart';
import '../../global_widget/carousel_slider.dart';
import '../../global_widget/product_details_all.dart';
import '../../model/new_product_model.dart';
import 'Categories/categories.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  @override
  void initState(){
    Get.find<HomeController>().setNewProductModel();
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilder<HomeController>(
        builder: (homecon) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff33907C),
              elevation: 0,
              title: Text(homecon.stringitem[1]['react']),
              //title: Text(ankan.home.toString()),
              /* Text("Groceries",style: TextStyle(color: Colors.white,fontSize: 25),),*/
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,)),
                Stack(children:[
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
                  Positioned(
                    right: 10,
                    top: 5,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Color(0xff33907C),
                      child: Center(
                        child: Padding(
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
                      ),
                    ),
                    Column(
                      children: [
                        Carousel_Slider(),
                        Categories()
                      ],
                    ),
                    Row(
                      children: [
                        Text("New Product ", style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
                        Spacer(),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff33907C),
                              fixedSize: Size(87.w, 23.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )

                          ),
                          child: Text("See All", style: TextStyle(fontSize: 12.sp,),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 270.h,
                      width: double.infinity.w,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: homecon.productmodelresponse.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          print(homecon.productmodelresponse[index]);

                          NewProductModel? model = homecon.productmodelresponse[index];

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                               Get.to(ProductScreen(
                                 // title: "${model.title}",
                                 // img: "${model.img}",
                                 // priceItm:  "${model.price}",
                                 // yesorno: true,
                                 // idname: "${model.id}",
                                 model: model,
                                ));
                              },
                              child: Column(
                              children: [
                                //Text('${ankan.new_product_items[index]['title']}'),
                                Stack(
                                  children: [
                                    Container(
                                    height: 140.h,
                                    width: 160.w,
                                    decoration: BoxDecoration(
                                        //color: Colors.redAccent,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage("${model.img}"),
                                          fit:  BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: IconButton(
                                        onPressed: () {
                                          print(homecon.new_product_items[index]);
                                          if(homecon.favItems.contains(index)){
                                            homecon.removeTtems(index);
                                          }else{
                                            homecon.addItems(homecon.new_product_items[index]);
                                           // homecon.addItems(homecon.favItems[index]);
                                          }
                                          //homecon.update();
                                          //homecon.addItems(homecon.new_product_items[index]);
                                        },
                                        icon: Icon(
                                          homecon.favItems.contains(index)
                                            ? Icons.favorite
                                            : Icons.favorite_outline_outlined,
                                          color: homecon.favItems.contains(index) ? Colors.teal : Colors.teal,)
                                        /*Icon(Icons.favorite_outline_outlined)*/
                                        /*Icon(Icons.favorite_border_outlined,color: Colors.teal,size: 30,),*/
                                        /*ankan.favItems[index] ? Icon(
                                          Icons.favorite,
                                          color: Colors.redAccent ,
                                          size: Get.height *.04,
                                        ) :Icon(
                                          Icons.favorite_border,
                                          color: Colors.teal ,
                                          size: Get.height *.04,
                                        ),*/
                                      ) /*:const Icon(Icons.favorite_border,color: Colors.transparent,)*/,
                                    )
/*
                                    IconButton(
                                      onPressed: () {
                                        ankan.toggleFavorite(index);
                                      },
                                      icon: Icon(Icons.favorite, color: Colors.redAccent,),
                                    ),
*/
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
                                        Text('${model.title}', style: TextStyle(fontSize: 20),),
                                        Spacer(),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.teal,
                                                child: Text('T', style: TextStyle(fontSize: 30),)),
                                            SizedBox(width: 10,),
                                            Text('${model.id}',style: TextStyle(fontSize: 20),),
                                            Spacer(),
                                            Text('${model.price}',style: TextStyle(fontSize: 20,color: Colors.teal),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                                ),
                            ),
                          );
                        },

                      ),
                    ),
                    Row(
                      children: [
                        Text("Popular Product", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Spacer(),
                        ElevatedButton(onPressed: (){

                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff33907C),
                              fixedSize: Size(87.w, 23.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )

                          ),
                          child: Text("See All", style: TextStyle(fontSize: 12.sp,),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 270.h,
                      width: double.infinity.w,
                      child: ListView.builder(
                        itemCount: homecon.popular_product_item.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Get.to(ProductScreen(
                                  // title: homecon.popular_product_item[index]['title'], img: homecon.popular_product_item[index]['img'], priceItm:  homecon.popular_product_item[index]['price'],yesorno: true,
                                  // idname: homecon.popular_product_item[index]['id'],
                                ));
                              },
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
                                          image: AssetImage(homecon.popular_product_item[index]['img']),
                                          fit:  BoxFit.fill,
                                        ),
                                      ),
                                    ),
/*
                                      IconButton(
                                        onPressed: () {
                                          homecon.addItems(index);
                                        },
                                        icon: Icon(Icons.favorite_outline_outlined,color: Colors.teal,),
                                        */
/*ankan.favItems[index] ? Icon(
                                          Icons.favorite,
                                          color: Colors.redAccent ,
                                          size: Get.height *.04,
                                        ) :Icon(
                                          Icons.favorite_border,
                                          color: Colors.teal ,
                                          size: Get.height *.04,
                                        ),*//*

                                      ) */
/*:const Icon(Icons.favorite_border,color: Colors.transparent,)*//*
,
*/

/*
                                      IconButton(
                                        onPressed: () {
                                          ankan.toggleFavorite(index);
                                        },
                                        icon: Icon(Icons.favorite, color: Colors.redAccent,),
                                      ),
*/
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
                                          Text('${homecon.popular_product_item[index]['title']}', style: TextStyle(fontSize: 20),),
                                          Spacer(),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                  backgroundColor: Colors.teal,
                                                  child: Text('T', style: TextStyle(fontSize: 30),)),
                                              SizedBox(width: 10,),
                                              Text('${homecon.popular_product_item[index]['id']}',style: TextStyle(fontSize: 20),),
                                              Spacer(),
                                              Text('${homecon.popular_product_item[index]['price']}',style: TextStyle(fontSize: 20,color: Colors.teal),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },

                      ),
                    ),

/*
                    SizedBox(
                      height: 280.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView.builder(
                          itemCount: ankan.popular_product_item.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 140.h,
                                  width: 160.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      topLeft: Radius.circular(10.r),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(ankan.popular_product_item[index]['img']),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100.h,
                                  width: 160.w,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54,
                                        offset:Offset(0,1),
                                        spreadRadius: 0,
                                        blurRadius: 0.5,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('${ankan.popular_product_item[index]['title']}',style: TextStyle(fontSize: 20),),
                                        Spacer(),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                backgroundColor: Colors.teal,
                                                child: Text('T',style: TextStyle(fontSize: 30),)),
                                            SizedBox(width: 10,),
                                            Text('${ankan.popular_product_item[index]['id']}',style: TextStyle(fontSize: 20),),
                                            Spacer(),
                                            Text('${ankan.popular_product_item[index]['price']}',style: TextStyle(fontSize: 20,color: Colors.teal),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        ),
                      ),
                    ),
*/
                    SizedBox(height: 20,),
                    Stack(
                      children: [
                        Container(
                        height: 200,
                        width: double.infinity,
                        color: Color(0xff33907C),
                      ),
                        Positioned(
                            child:Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Store to follow", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                                        Spacer(),
                                        ElevatedButton(onPressed: (){},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              fixedSize: Size(87, 23),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20)
                                              )

                                          ),
                                          child: Text("View all", style: TextStyle(fontSize: 15,color: Color(0xff33907C)),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                    Row(
                                      children: [
                                        Stack(
                                          children:[
                                            Container(
                                              height: 220,
                                              width: 190,
                                              decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(
                                                    color: Colors.black54,
                                                    spreadRadius: 0,
                                                    blurRadius: 0.5,
                                                    offset: Offset(0,1),
                                                  ),],
                                                  //border: Border.all(color: Colors.black,),
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Color(0xffFFFFFF),
                                                  image: DecorationImage(
                                                      image: AssetImage('assets/store/store 1.png'),
                                                      alignment: Alignment.topCenter
                                                  )
                                              ),

                                            ),

                                            Positioned(
                                                top: 68,
                                                left: 40,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 64,
                                                      width: 64,
                                                      child: Center(child: Text("T",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.white),
                                                        color: Color(0xff33907C),
                                                        borderRadius: BorderRadius.circular(100),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1,),
                                                    Text("Tradly Store", style: TextStyle(fontSize:20,),),
                                                  ],
                                                )
                                            ),
                                            Positioned(
                                              bottom: 5,
                                              left: 50,
                                              child: ElevatedButton(onPressed: (){},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Color(0xff33907C),
                                                    fixedSize: Size(87, 23),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(20)
                                                    )

                                                ),
                                                child: Text("View all", style: TextStyle(fontSize: 15,color: Colors.white),),
                                              ),
                                            ),

                                          ],
                                        ),
                                        SizedBox(width:10 ,),
                                        Stack(
                                          children:[
                                            Container(
                                              height: 220,
                                              width: 190,
                                              decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(
                                                    color: Colors.black54,
                                                    spreadRadius: 0,
                                                    blurRadius: 0.5,
                                                    offset: Offset(0,1),
                                                  ),],
                                                  //border: Border.all(color: Colors.black,),
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Color(0xffFFFFFF),
                                                  image: DecorationImage(
                                                      image: AssetImage('assets/store/store 2.png'),
                                                      alignment: Alignment.topCenter
                                                  )
                                              ),

                                            ),

                                            Positioned(
                                                top: 68,
                                                left: 30,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 64,
                                                      width: 64,
                                                      child: Center(child: Text("A",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                      decoration: BoxDecoration(
                                                        color: Color(0xffA08DCF),
                                                        border: Border.all(color: Colors.white),
                                                        borderRadius: BorderRadius.circular(100),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1,),
                                                    Text("Groceries store", style: TextStyle(fontSize:20,),),
                                                  ],
                                                )
                                            ),
                                            Positioned(
                                              bottom: 5,
                                              left: 50,
                                              child: ElevatedButton(onPressed: (){},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Color(0xff33907C),
                                                    fixedSize: Size(87, 23),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(20)
                                                    )

                                                ),
                                                child: Text("View all", style: TextStyle(fontSize: 15,color: Colors.white),),
                                              ),
                                            ),

                                          ],
                                        ),
                                        SizedBox(width:10 ,),
                                        Stack(
                                          children:[
                                            Container(
                                              height: 220,
                                              width: 190,
                                              decoration: BoxDecoration(
                                                  boxShadow: [BoxShadow(
                                                    color: Colors.black54,
                                                    spreadRadius: 0,
                                                    blurRadius: 0.5,
                                                    offset: Offset(0,1),
                                                  ),],
                                                  //border: Border.all(color: Colors.black,),
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Color(0xffFFFFFF),
                                                  image: DecorationImage(
                                                      image: AssetImage('assets/store/store 3.png'),
                                                      alignment: Alignment(0,-2.5),
                                                  )
                                              ),

                                            ),

                                            Positioned(
                                                top: 68,
                                                left: 40,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 64,
                                                      width: 64,
                                                      child: Center(child: Text("F",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                      decoration: BoxDecoration(
                                                        color: Colors.blueGrey,
                                                        border: Border.all(color: Colors.white),
                                                        borderRadius: BorderRadius.circular(100),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1,),
                                                    Text("Food Store", style: TextStyle(fontSize:20,),),
                                                  ],
                                                )
                                            ),
                                            Positioned(
                                              bottom: 5,
                                              left: 50,
                                              child: ElevatedButton(onPressed: (){},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Color(0xff33907C),
                                                    fixedSize: Size(87, 23),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(20)
                                                    )

                                                ),
                                                child: Text("Follow", style: TextStyle(fontSize: 15,color: Colors.white),),
                                              ),
                                            ),

                                          ],
                                        ),
                                        SizedBox(width:10 ,),


                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),

                      ]
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
