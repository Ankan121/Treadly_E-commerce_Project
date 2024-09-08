import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../auth_screen/login_page.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Color(0xff33907C),
          elevation: 0,
          title: Text("Groceries",style: TextStyle(color: Colors.white,fontSize: 25),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 330,
              width: double.infinity,
              color: Color(0xff33907C),

            ),
            Positioned(
              top: 10,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue,
                        child: Text('T',style: TextStyle(fontSize: 80, color: Colors.white),)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tradly Team',style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text('01571258430',style: TextStyle(fontSize: 15,color: Colors.white),),
                      Text('ankan.dev.prog@gmail.com',style: TextStyle(fontSize: 15,color: Colors.white),),

                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 300,
                width: 350,
                //color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Ankan Chandra Biswas',style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    Text('ankan.dev.prog@gmail.com',style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text('01571258430',style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      Text('Raipura, Narsingdi',style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      TextButton(onPressed: (){
                        Get.to(ApplyScreen());
                      }, child: Text('Logout',style: TextStyle(fontSize: 20),)),

                    ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
