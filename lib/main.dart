import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me/routs/routes.dart';
import 'package:me/routs/routes_names.dart';

import 'controller/bindings.dart';






void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return  GetMaterialApp(
          initialBinding: ControllerBin(),
          debugShowCheckedModeBanner: false,
          initialRoute: RouteNames.splash,
          onGenerateRoute: Routes.generateRoute,
        );
        },
    );

  }

}
/*
MaterialApp(
debugShowCheckedModeBanner: false,
home: Navigation_Var(),

);
*/


