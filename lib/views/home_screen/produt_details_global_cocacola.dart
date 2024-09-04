import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:me/views/home_screen/navigation_var.dart';

import '../cart_screen/addto_cart.dart';

class Item_1_cocacola extends StatefulWidget {
  const Item_1_cocacola({super.key});

  @override
  State<Item_1_cocacola> createState() => _Item_1_cocacolaState();
}

class _Item_1_cocacolaState extends State<Item_1_cocacola> {
  List<String> _Itemimageslider = [
    'assets/product/coca cola 1.jpg',
    'assets/product/coca cola 2.jpg',
    'assets/product/coca cola 3.jpg',
    'assets/product/coca cola 4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white24,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white.withOpacity(0.5),
              child: IconButton(
                icon: Icon(Icons.arrow_back_rounded,color: Colors.white,),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Navigation_Var()),
                  );
                },
              ),
            ),
            actions: [
              CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,))),
              SizedBox(width: 10,),
              CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,))),
              SizedBox(width: 10,),
              CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))),
            ],
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(     //imge slider start
                  height: 250,
                  width: double.infinity,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        //autoPlay: true,
                        enlargeCenterPage: true,
                      ), items: _Itemimageslider.map((e) => Container(
                      height: 200,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(e)),
                      )
                  ),
                  ).toList()),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
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
                                    child: Text('Coca Cola',style: TextStyle(fontSize: 28),textAlign: TextAlign.left,)),
                                    SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text('\$25',style: TextStyle(color: Color(0xff33907C),fontSize:25),),
                                    SizedBox(width: 20,),
                                    Text('\$50',style: TextStyle(color: Colors.black,fontSize: 20,decoration: TextDecoration.lineThrough),),
                                    SizedBox(width: 10,),
                                    Text('\$50 50% off ',style: TextStyle(color: Colors.black,fontSize: 20,),)
                                  ],
                                )
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 70,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff33907C),
                              child: Text("T",style: TextStyle(fontSize: 25),),),
                            SizedBox(width: 240,),
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
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 260,
                      width: double.infinity,
                      color: Colors.white,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Starting February 17 and while supplies last, fans can purchase special “hype kits” on TikTok Shop, containing a pair of Coca‑Cola® Happy Tears Zero Sugar cans—one for themselves and one to share as an act of kindness—and an assortment of kindness-themed accessories, including a t-shirt, stickers and tissues to wipe your happy tears. The striking can design features an embossed, iridescent teardrop.',
                                style: TextStyle(fontSize: 20,),
                                textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Container(
                      height: 270,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Add_To_Card()),
                            );
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff33907C),
                                fixedSize: Size(300, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )

                            ),
                            child: Text("Add To Cart", style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Row(
                                  children: [
                                    Text('Condition',style: TextStyle(fontSize: 20),),
                                    SizedBox(width: 56,),
                                    Text('Organic',style: TextStyle(fontSize: 20),),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Text('Price Type',style: TextStyle(fontSize: 20),),
                                    SizedBox(width: 50,),
                                    Text('Fixed',style: TextStyle(fontSize: 20),),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Text('Category',style: TextStyle(fontSize: 20),),
                                    SizedBox(width: 60,),
                                    Text('Beverages',style: TextStyle(fontSize: 20),),

                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Text('Location',style: TextStyle(fontSize: 20),),
                                    SizedBox(width: 65,),
                                    Text('Kualalumpur, Malaysia',style: TextStyle(fontSize: 20),),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.white,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text('Additional Details',style: TextStyle(fontSize: 30),),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text('Delivery Details',style: TextStyle(fontSize: 20),),
                                SizedBox(width: 20,),
                                Text('Home Delivery Available,',style: TextStyle(fontSize: 20),),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 157,),
                                Text('Cash On Delivery',style: TextStyle(fontSize: 20),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
/*
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text("Coca Cola",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,)
                    ],
                  ),

                ),
*/
              ],
            ),
          ),

        ),
      ),
    );
  }
}
