import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:me/model/albam_model.dart';

import '../model/album_list_model.dart';

class AuthController extends GetxController{

  Future<Album?> fetchAlbum() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body);
    print("Response from Api");
  }


  List<AlbumModel>? albumsList;
  Future <AlbumModel?> fetchAlbumModel()async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    print(response.body);
    if(response.statusCode == 200){
      var responseData = jsonDecode(response.body);
      albumsList = albumModelFromMap(responseData);
      print(albumsList);
    }else {
      throw Exception("Failed to load album");
    }
  }

}