import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Categories_Details extends StatelessWidget {
  Categories_Details({super.key, required this.name, required this.item, /*required this.item*/});
  final String? name;
  final List<dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_rounded),),
        backgroundColor: Colors.teal,
        title: Text('${name.toString()}'),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 15),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 20,
            ),
            itemCount: item.length,
            itemBuilder: ( context, index) {
              return Column(
                  children: [
                    Expanded(
                      child: Container(
                      height: 140,
                      width: 160,
                      decoration: BoxDecoration(
                        //color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('${item[index]['img']}' ),
                          fit:  BoxFit.fill,
                        ),
                      ),
              ),
                    ),
                    Expanded(
                      child: Container(
                        height: 110,
                        width: 160,
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
                              Text('${item[index]['title']}', style: TextStyle(fontSize: 20),maxLines: 1,overflow: TextOverflow.ellipsis,),
                              Spacer(),
                              Row(
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.teal,
                                      child: Text('T', style: TextStyle(fontSize: 30),)),
                                  //SizedBox(width: 10,),
                                  //Text('${item[index]['id']}',style: TextStyle(fontSize: 20),),
                                  Spacer(),
                                  Text('${item[index]['price']}',style: TextStyle(fontSize: 20,color: Colors.teal),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                );
            },

          ),
        ),
      ),
    );
  }
}
