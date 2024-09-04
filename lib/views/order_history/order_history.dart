import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order_History extends StatefulWidget {
  const Order_History({super.key});

  @override
  State<Order_History> createState() => _Order_HistoryState();
}

class _Order_HistoryState extends State<Order_History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Color(0xff33907C),
          elevation: 0,
          title: Text("Order History ",style: TextStyle(color: Colors.white,fontSize: 25),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Transactions',style: TextStyle(fontSize: 20),),
                  //SizedBox(width: 20,),
                  TextButton(onPressed: (){}, child: Text('Januari 2020',style: TextStyle(fontSize: 15),)),

                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                          image: AssetImage('assets/product/coca cola 2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 70,
                    child: Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(' Coca Cola \n \$25',style: TextStyle(fontSize: 15),textAlign: TextAlign.left,)),
                        SizedBox(width: 155,),
                        Container(
                          height: 30,
                          width: 80,
                          child: Center(child: Text('Delivered')),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                          image: AssetImage('assets/product/coca cola 2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 70,
                    child: Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(' Coca Cola \n \$25',style: TextStyle(fontSize: 15),textAlign: TextAlign.left,)),
                        SizedBox(width: 120,),
                        Container(
                          height: 30,
                          width: 120,
                          child: Center(child: Text('Order placed')),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal
                            ),
                            borderRadius: BorderRadius.circular(40,),

                            //color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                          image: AssetImage('assets/product/coca cola 2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 70,
                    child: Row(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(' Coca Cola \n \$25',style: TextStyle(fontSize: 15),textAlign: TextAlign.left,)),
                        SizedBox(width: 90,),
                        Container(
                          height: 30,
                          width: 150,
                          child: Center(child: Text('Payment confirmed')),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal
                            ),
                            borderRadius: BorderRadius.circular(40,),

                            //color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),

    );
  }
}
