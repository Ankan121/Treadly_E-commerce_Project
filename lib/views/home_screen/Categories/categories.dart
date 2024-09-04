import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/controller/home_controller.dart';
import 'package:me/global_widget/new_product.dart';
import 'package:me/views/home_screen/Categories/categories_all_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        height: 207,
        width: double.infinity,
        child: GridView.builder(
          //shrinkWrap: false,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: controller.catagoris.length.clamp(0, 8),
            itemBuilder: (context, index){
              return InkWell(
                onTap: (){
                  Get.to(Categories_Details(name: controller.catagorisitem[index]['title'], item: controller.catagorisitem[index]['items'],));
                },
                child: Container(
                  child: Center(child: Text('${controller.catagoris[index]['title']}',style: TextStyle(fontSize: 18,color: Colors.white),)),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.catagorisitem[index]['img']),
                    )
                  ),
                ),
              );
            }
        ),
      );
    },);
  }
}
