import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:me/global_widget/product_details_all.dart';
import 'package:me/routs/routes_names.dart';
import 'package:me/views/auth_screen/login_page.dart';
import 'package:me/views/auth_screen/signup_page.dart';
import 'package:me/views/cart_screen/addto_cart.dart';
import 'package:me/views/cart_screen/cart_navigarionbar.dart';
import 'package:me/views/favorite_screen/Browse_page.dart';
import 'package:me/views/home_screen/home_screen.dart';
import 'package:me/views/home_screen/navigation_var.dart';
import 'package:me/views/home_screen/new_prouct/new_product_title.dart';
import 'package:me/views/home_screen/product_details/product_details_1.dart';
import 'package:me/views/home_screen/product_details/product_details_2.dart';
import 'package:me/views/home_screen/product_details/product_details_4.dart';
import 'package:me/views/home_screen/product_details/product_details_5.dart';
import 'package:me/views/home_screen/product_details/product_details_6.dart';
import 'package:me/views/home_screen/product_details/product_details_7.dart';
import 'package:me/views/home_screen/product_details/product_details_8.dart';
import 'package:me/views/home_screen/produt_details_global_cocacola.dart';
import 'package:me/views/intro_screen/onboarding_1.dart';
import 'package:me/views/order_history/order_history.dart';
import 'package:me/views/profile_screen/profile.dart';
import 'package:me/views/splash_screen/splash.dart';

import '../views/home_screen/product_details/product_details_3.dart';

class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteNames.splash:
        return MaterialPageRoute(builder: (BuildContext context)=> Splash_Page());
      case RouteNames.login_page:
        return MaterialPageRoute(builder: (BuildContext context)=> ApplyScreen());
      case RouteNames.signup_page:
        return MaterialPageRoute(builder: (BuildContext contex)=> Signup_Page());
      case RouteNames.addto_cart:
        return MaterialPageRoute(builder: (BuildContext context)=> Add_To_Card());
      case RouteNames.cart_navigarionbar:
        return MaterialPageRoute(builder: (BuildContext context)=> Cart_Navigation_Bar());
      case RouteNames.browse_page:
        return MaterialPageRoute(builder: (BuildContext context)=>Browse_Page());
      case RouteNames.home_screen:
        return MaterialPageRoute(builder: (BuildContext context)=> Home_Screen());
      case RouteNames.navigation_var:
        return MaterialPageRoute(builder: (BuildContext context)=> Navigation_Var());
      case RouteNames.produt_details_global_cocacola:
        return MaterialPageRoute(builder: (BuildContext context)=>Item_1_cocacola());
      case RouteNames.onboarding_1:
        return MaterialPageRoute(builder: (BuildContext context)=> OnBoarding_Page_1());
      case RouteNames.order_history:
        return MaterialPageRoute(builder: (BuildContext context)=> Order_History());
      case RouteNames.profile:
        return MaterialPageRoute(builder: (BuildContext context)=> Profile_page());
      case RouteNames.product_details_1:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details());
      case RouteNames.product_details_2:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_2());
      case RouteNames.product_details_3:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_3());
      case RouteNames.product_details_4:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_4());
      case RouteNames.product_details_5:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_5());
      case RouteNames.product_details_6:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_6());
      case RouteNames.product_details_7:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_7());
      case RouteNames.product_details_8:
        return MaterialPageRoute(builder: (BuildContext context)=> Product_Details_8());
      case RouteNames.new_product_title:
        return MaterialPageRoute(builder: (BuildContext context)=> New_Product_Tatils());

      default:
        return MaterialPageRoute(builder: (BuildContext context)=> Splash_Page());
    }
  }
}