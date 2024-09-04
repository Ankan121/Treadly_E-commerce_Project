import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:me/views/cart_screen/cart_navigarionbar.dart';
import '../home_screen/produt_details_global_cocacola.dart';


class Add_To_Card extends StatefulWidget {
  const Add_To_Card({super.key});

  @override
  State<Add_To_Card> createState() => _Add_To_CardState();
}

class _Add_To_CardState extends State<Add_To_Card> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Item_1_cocacola()),);
          }, icon: Icon(Icons.arrow_back_rounded),),
          title: Text('My Cart',style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: Text("Follow", style: TextStyle(fontSize: 10,color: Colors.white),),
                          ),

                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
            SizedBox(height: 40,),
            Column(
              children: [
                Container(
                height: 170,
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
                            image: AssetImage('assets/product/coca cola 2.jpg'),
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
                              child: Text(' Coca Cola \n \$25 \n Qty : 1',style: TextStyle(fontSize: 20),textAlign: TextAlign.left,)),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                              child: Text(' \$25 \n Info',style: TextStyle(fontSize: 20),textAlign: TextAlign.left,)),
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
                              child: Text(' \$25 ',style: TextStyle(fontSize: 25),textAlign: TextAlign.left,)),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 122,),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child:Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Cart_Navigation_Bar()),
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
                    ],
                  ),

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
