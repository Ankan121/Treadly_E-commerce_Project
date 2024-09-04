import 'package:flutter/material.dart';

import '../navigation_var.dart';

class Product_Details_6 extends StatefulWidget {
  const Product_Details_6({super.key});

  @override
  State<Product_Details_6> createState() => _Product_Details_6State();
}

class _Product_Details_6State extends State<Product_Details_6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff33907C),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Navigation_Var()),
              );
            },
          ),
          title: Text('Frozen veg',style: TextStyle(fontSize: 30),),
          centerTitle: true,
        ),

        body: SafeArea(
          child: SingleChildScrollView(
            child:Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Color(0xff33907C),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 7,
                      child: Center(
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
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 1,),
                    Container(
                      height:660,
                      width: 420,
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 800,
                                width: 500,
                                child: GridView.count(
                                  //primary: false,
                                  padding: const EdgeInsets.all(10),
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2,
                                  physics: ClampingScrollPhysics(),
                                  children: <Widget>[
                                    Stack(
                                      children:[
                                        Container(
                                          height: 195,
                                          width: 160,
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
                                                image: AssetImage('assets/slider 3.jpg'),
                                                alignment: Alignment(0,-1.2),
                                              )
                                          ),

                                        ),
                                        Positioned(
                                          top: 130,
                                          left: 10,
                                          child: Text("Facewash",style: TextStyle(fontSize: 20,),),
                                        ),
                                        Positioned(
                                            top: 157,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(child: Text("T",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff33907C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text("Tradly", style: TextStyle(fontSize:20,),),
                                              ],
                                            )
                                        ),
                                        Positioned(
                                          top: 163,
                                          left: 125,
                                          child: Text('\$5',style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                        ),

                                      ],
                                    ),
                                    Stack(
                                      children:[
                                        Container(
                                          height: 195,
                                          width: 160,
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
                                                image: AssetImage('assets/slider 3.jpg'),
                                                alignment: Alignment(0,-1.2),
                                              )
                                          ),

                                        ),
                                        Positioned(
                                          top: 130,
                                          left: 10,
                                          child: Text("Facewash",style: TextStyle(fontSize: 20,),),
                                        ),
                                        Positioned(
                                            top: 157,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(child: Text("T",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff33907C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text("Tradly", style: TextStyle(fontSize:20,),),
                                              ],
                                            )
                                        ),
                                        Positioned(
                                          top: 163,
                                          left: 125,
                                          child: Text('\$5',style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                        ),

                                      ],
                                    ),
                                    Stack(
                                      children:[
                                        Container(
                                          height: 195,
                                          width: 160,
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
                                                image: AssetImage('assets/slider 3.jpg'),
                                                alignment: Alignment(0,-1.2),
                                              )
                                          ),

                                        ),
                                        Positioned(
                                          top: 130,
                                          left: 10,
                                          child: Text("Facewash",style: TextStyle(fontSize: 20,),),
                                        ),
                                        Positioned(
                                            top: 157,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(child: Text("T",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff33907C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text("Tradly", style: TextStyle(fontSize:20,),),
                                              ],
                                            )
                                        ),
                                        Positioned(
                                          top: 163,
                                          left: 125,
                                          child: Text('\$5',style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                        ),

                                      ],
                                    ),
                                    Stack(
                                      children:[
                                        Container(
                                          height: 195,
                                          width: 160,
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
                                                image: AssetImage('assets/slider 3.jpg'),
                                                alignment: Alignment(0,-1.2),
                                              )
                                          ),

                                        ),
                                        Positioned(
                                          top: 130,
                                          left: 10,
                                          child: Text("Facewash",style: TextStyle(fontSize: 20,),),
                                        ),
                                        Positioned(
                                            top: 157,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(child: Text("T",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff33907C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text("Tradly", style: TextStyle(fontSize:20,),),
                                              ],
                                            )
                                        ),
                                        Positioned(
                                          top: 163,
                                          left: 125,
                                          child: Text('\$5',style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                        ),

                                      ],
                                    ),
                                    Stack(
                                      children:[
                                        Container(
                                          height: 195,
                                          width: 160,
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
                                                image: AssetImage('assets/slider 3.jpg'),
                                                alignment: Alignment(0,-1.2),
                                              )
                                          ),

                                        ),
                                        Positioned(
                                          top: 130,
                                          left: 10,
                                          child: Text("Facewash",style: TextStyle(fontSize: 20,),),
                                        ),
                                        Positioned(
                                            top: 157,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(child: Text("T",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff33907C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text("Tradly", style: TextStyle(fontSize:20,),),
                                              ],
                                            )
                                        ),
                                        Positioned(
                                          top: 163,
                                          left: 125,
                                          child: Text('\$5',style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                        ),

                                      ],
                                    ),
                                    Stack(
                                      children:[
                                        Container(
                                          height: 195,
                                          width: 160,
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
                                                image: AssetImage('assets/slider 3.jpg'),
                                                alignment: Alignment(0,-1.2),
                                              )
                                          ),

                                        ),
                                        Positioned(
                                          top: 130,
                                          left: 10,
                                          child: Text("Facewash",style: TextStyle(fontSize: 20,),),
                                        ),
                                        Positioned(
                                            top: 157,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  child: Center(child: Text("T",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff33907C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Text("Tradly", style: TextStyle(fontSize:20,),),
                                              ],
                                            )
                                        ),
                                        Positioned(
                                          top: 163,
                                          left: 125,
                                          child: Text('\$5',style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
