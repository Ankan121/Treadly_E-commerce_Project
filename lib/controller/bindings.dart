/*

import 'package:get/get.dart';

import 'home_controller.dart';

class ControllerBing extends Bindings{
  @override
  void dependencies(){
    Get.put<HomeController>(HomeController());
  }
}*/

import 'package:get/get.dart';
import 'package:me/controller/auth_controller.dart';
import 'package:me/controller/home_controller.dart';

import 'new_product_controller.dart';

class ControllerBin extends Bindings{
  @override
  void dependencies(){
    Get.put<HomeController>(HomeController());
    Get.put<AuthController>(AuthController());
    Get.put<New_Products_Items>(New_Products_Items());
  }
}