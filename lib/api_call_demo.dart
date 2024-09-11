import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/controller/auth_controller.dart';
import 'package:me/model/album_list_model.dart';

class Api_Call_Demo extends StatefulWidget {
  const Api_Call_Demo({super.key});

  @override
  State<Api_Call_Demo> createState() => _Api_Call_DemoState();
}

class _Api_Call_DemoState extends State<Api_Call_Demo> {
  @override
  void initState(){
    Future.delayed(Duration.zero, ()async{
      await Get.find<AuthController>().fetchAlbum();


      Future.delayed(Duration.zero, ()async{
        await Get.find<AuthController>().fetchAlbumModel();
      }
      );

    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: ( authcon) {
      return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: ListView.builder(
              itemCount: authcon.albumsList?.length,
              itemBuilder: ( context,  index) {
                AlbumModel? model = authcon.albumsList?[index];
              return Text("${index}:- ${model?.title}");
                //Text('${index}:- ${model?.title}',style: TextStyle(fontSize: 50),);
            },),
        ),
      );
    },);
  }
}
