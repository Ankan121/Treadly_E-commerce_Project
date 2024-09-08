import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:me/model/albam_model.dart';

class AuthController extends GetxController{

  Future<Album?> fetchAlbum() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body);
    print("Response from Api");
  }

}