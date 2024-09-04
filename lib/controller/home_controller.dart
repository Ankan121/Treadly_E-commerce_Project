/*
import 'package:get/get.dart';

class HomeController extends GetxController{
  var home = 'home screen';
}*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  //=============Home Page=============
  // Home Appbar Name
  String home = 'Home Screen';

  //demo list
  List stringitem = [
    {'flutter' : 'Flutter'}, {'react' : 'React'}, {'php' : 'Php'}
  ];
  // Catagoris product detaisl item
  List catagorisitem=[
    {
      'img': 'assets/categories/img.png',
      'title': 'Beverages',
      'items': [
        {
          'img': 'assets/categories/beverages/img.png',
          'title': 'Strawberry Punch',
          'price': '25',
        },
        {
          'img': 'assets/categories/beverages/img_1.png',
          'title': 'Lemonade',
          'price': '15',
        },
        {
          'img': 'assets/categories/beverages/img_2.png',
          'title': 'Chocolate Bakery',
          'price': '10',
        },
        {
          'img': 'assets/categories/beverages/img_3.png',
          'title': 'Whisky',
          'price': '22',
        },
        {
          'img': 'assets/categories/beverages/img_4.png',
          'title': 'Chocolate Bakery',
          'price': '30',
        },
        {
          'img': 'assets/categories/beverages/img_5.png',
          'title': 'Fruit Punch',
          'price': '15',
        },
      ],
    },
    {
      'img': 'assets/categories/img_1.png',
      'title': 'Bread & Bakery',
      'items': [
        {
          'img': 'assets/categories/breadBakery/img.png',
          'title': 'Bread Chocolate',
          'price': '25',
        },
        {
          'img': 'assets/categories/breadBakery/img_1.png',
          'title': 'Circle Bakery',
          'price': '15',
        },
        {
          'img': 'assets/categories/breadBakery/img_2.png',
          'title': 'Cookies',
          'price': '10',
        },
        {
          'img': 'assets/categories/breadBakery/img_3.png',
          'title': 'Long Bread',
          'price': '15',
        },
        {
          'img': 'assets/categories/breadBakery/img_4.png',
          'title': 'Donut',
          'price': '30',
        },
        {
          'img': 'assets/categories/breadBakery/img_5.png',
          'title': 'Bread',
          'price': '15',
        },
      ],
    },
    {
      'img': 'assets/categories/img_2.png',
      'title': 'Vegetables',
      'items': [
        {
          'img': 'assets/categories/vegetables/img.png',
          'title': 'Carrot',
          'price': '25',
        },
        {
          'img': 'assets/categories/vegetables/img_1.png',
          'title': 'Cabbage',
          'price': '15',
        },
        {
          'img': 'assets/categories/vegetables/img_2.png',
          'title': 'Tomato',
          'price': '10',
        },
        {
          'img': 'assets/categories/vegetables/img_3.png',
          'title': 'Garlic',
          'price': '15',
        },
        {
          'img': 'assets/categories/vegetables/img_4.png',
          'title': 'Tomatoes',
          'price': '10',
        },
        {
          'img': 'assets/categories/vegetables/img_5.png',
          'title': 'Corn',
          'price': '15',
        },
      ],
    },
    {
      'img': 'assets/categories/img_3.png',
      'title': 'Fruit',
      'items': [
        {
          'img': 'assets/categories/fruit/img.png',
          'title': 'Avocado',
          'price': '10',
        },
        {
          'img': 'assets/categories/fruit/img_1.png',
          'title': 'Banana',
          'price': '15',
        },
        {
          'img': 'assets/categories/fruit/img_2.png',
          'title': 'Orange',
          'price': '10',
        },
        {
          'img': 'assets/categories/fruit/img_3.png',
          'title': 'Papaya',
          'price': '15',
        },
        {
          'img': 'assets/categories/fruit/img_4.png',
          'title': 'Pineapple',
          'price': '10',
        },
        {
          'img': 'assets/categories/fruit/img_5.png',
          'title': 'Watermelon',
          'price': '15',
        },
      ],
    },
    {
      'img': 'assets/categories/img_4.png',
      'title': 'Egg',
      'items': [
        {
          'img': 'assets/categories/egg/img.png',
          'title': 'Chicken Egg',
          'price': '10',
        },
        {
          'img': 'assets/categories/egg/img_1.png',
          'title': 'Fresh Egg',
          'price': '20',
        },
        {
          'img': 'assets/categories/egg/img_2.png',
          'title': 'Bird Egg',
          'price': '25',
        },
        {
          'img': 'assets/categories/egg/img_3.png',
          'title': 'Blue Egg',
          'price': '15',
        },
        {
          'img': 'assets/categories/egg/img_4.png',
          'title': 'Fresh Egg',
          'price': '10',
        },
        {
          'img': 'assets/categories/egg/img_5.png',
          'title': 'Duck Egg',
          'price': '15',
        },
      ],
    },
    {
      'img': 'assets/categories/img_5.png',
      'title': 'Frozen veg',
      'items': [
        {
          'img': 'assets/categories/frozen/img.png',
          'title': 'Ice Cream',
          'price': '10',
        },
        {
          'img': 'assets/categories/frozen/img_1.png',
          'title': 'Mango Ice',
          'price': '15',
        },
        {
          'img': 'assets/categories/frozen/img_2.png',
          'title': 'Strawberry Ice',
          'price': '30',
        },
        {
          'img': 'assets/categories/frozen/img_3.png',
          'title': 'Match',
          'price': '10',
        },
        {
          'img': 'assets/categories/frozen/img_4.png',
          'title': 'Grape Ice Cream',
          'price': '25',
        },
        {
          'img': 'assets/categories/frozen/img_5.png',
          'title': 'Frozen Bottle',
          'price': '15',
        },
      ],
    },
    {
      'img': 'assets/categories/img_6.png',
      'title': 'Home care',
      'items': [
        {
          'img': 'assets/categories/homeCare/img.png',
          'title': 'Moisturizer',
          'price': '30',
        },
        {
          'img': 'assets/categories/homeCare/img_1.png',
          'title': 'Vitamin Bundle',
          'price': '15',
        },
        {
          'img': 'assets/categories/homeCare/img_2.png',
          'title': 'Shower Gel',
          'price': '10',
        },
        {
          'img': 'assets/categories/homeCare/img_3.png',
          'title': 'Facial Wash',
          'price': '25',
        },
        {
          'img': 'assets/categories/homeCare/img_4.png',
          'title': 'Onne Beauty',
          'price': '10',
        },
        {
          'img': 'assets/categories/homeCare/img_5.png',
          'title': 'Fur Moisturizer',
          'price': '35',
        },
      ],
    },
    {
      'img': 'assets/categories/img_7.png',
      'title': 'Pet Care',
      'items': [
        {
          'img': 'assets/categories/petCare/img.png',
          'title': 'Pet Snack',
          'price': '10',
        },
        {
          'img': 'assets/categories/petCare/img_1.png',
          'title': 'Potion Pet',
          'price': '15',
        },
      ],
    },
  ];
  //Carasoul Slider
  List imageslider = [
    'assets/slider 2.jpg',
    'assets/slider 3.jpg',
    'assets/slider 4.jpg',

  ];

  // home page new product
  List new_product_items = [
    {
      'img': 'assets/product coca cola.png',
      'title': 'Coca Cola',
      'price': '\$25',
      'id' : 'Tradly'
    },
    {
      'img': 'assets/product musrom.png',
      'title': 'Musrom',
      'price': '\$15',
      'id' : 'Tradly'
    },
    {
      'img': 'assets/product facewash.jpg',
      'title': 'Facewash',
      'price': '\$20',
      'id' : 'Tradly'
    },

    {
      'img': 'assets/slider 3.jpg',
      'title': 'Shono',
      'price': '\$18',
      'id' : 'Tradly'
    },
  ];



  //Pupolar product home page
  List popular_product_item = [
    {
      'img' : 'assets/popular product 1.png',
      'title' : 'Fish',
      'price' : '\$10',
      'id' : 'Treadly',
    },
    {
      'img' : 'assets/popular product 2.png',
      'title' : 'Shampo',
      'price' : '\$5',
      'id' : 'Treadly',
    },
    {
      'img' : 'assets/slider 2.jpg',
      'title' : 'Shampo',
      'price' : '\$8',
      'id' : 'Treadly',
    }
  ];

  //GridView Catagoris
  List catagoris = [
    {
      'img' : 'assets/girdview 1.png',
      'title' : 'Beverages',
    },
    {
      'img' : 'assets/girdview 2.png',
      'title' : 'Bread & Bakery',
    },
    {
      'img' : 'assets/girdview 3.png',
      'title' : 'Vegetables',
    },
    {
      'img' : 'assets/girdview 4.png',
      'title' : 'Fruit',
    },
    {
      'img' : 'assets/girdview 5.png',
      'title' : 'Egg',
    },
    {
      'img' : 'assets/girdview 6.png',
      'title' : 'Frozen veg',
    },
    {
      'img' : 'assets/girdview 7.png',
      'title' : 'Homecare',
    },
    {
      'img' : 'assets/girdview 8.png',
      'title' : 'Pet Care',
    }
  ];

//=============Home Page=============
  /*List favitems = [];

  void addtoFavorite(dynamic value){
    favitems.add(value);
    update();
    Get.snackbar(
      "Tiredly",
      "Successfully added to favorite",
      icon: Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.teal,
    );
  }

  void removedtoFavorite(dynamic index){
    favitems.removeAt(index);
    update();
  }*/
  List items = [
    {
      'img': 'assets/categories/beverages/img.png',
      'title': 'Strawberry Punch',
      'price': '25',
    },
    {
      'img': 'assets/categories/beverages/img_1.png',
      'title': 'Lemonade',
      'price': '15',
    },
    {
      'img': 'assets/categories/beverages/img_2.png',
      'title': 'Chocolate Bakery',
      'price': '10',
    },
    {
      'img': 'assets/categories/beverages/img_3.png',
      'title': 'Whisky',
      'price': '22',
    },
    {
      'img': 'assets/categories/beverages/img_4.png',
      'title': 'Chocolate Bakery',
      'price': '30',
    },
    {
      'img': 'assets/categories/beverages/img_5.png',
      'title': 'Fruit Punch',
      'price': '15',
    },
    {
      'img': 'assets/categories/breadBakery/img.png',
      'title': 'Bread Chocolate',
      'price': '25',
    },
    {
      'img': 'assets/categories/breadBakery/img_1.png',
      'title': 'Circle Bakery',
      'price': '15',
    },
    {
      'img': 'assets/categories/breadBakery/img_2.png',
      'title': 'Cookies',
      'price': '10',
    },
    {
      'img': 'assets/categories/breadBakery/img_3.png',
      'title': 'Long Bread',
      'price': '15',
    },
    {
      'img': 'assets/categories/breadBakery/img_4.png',
      'title': 'Donut',
      'price': '30',
    },
    {
      'img': 'assets/categories/breadBakery/img_5.png',
      'title': 'Bread',
      'price': '15',
    },
  ];


  List favItems = [];

  void addItems(dynamic value){
    favItems.add(value);
    update();
  }

  void removeTtems(dynamic index){
    favItems.removeAt(index);
    update();
  }
  /*bool isFavorite(Map<String, dynamic> product) {
    return favItems.contains(product);
  }*/
/*
  List<bool> isFavorite = [];

  @override
  void onInit() {
    super.onInit();
    isFavorite = List.generate(items.length, (index) => false);
  }

  void toggleFavorite(int index) {
    isFavorite[index] = !isFavorite[index];
    update();
  }
*/
/*
  void removedtoFavorite(dynamic index) {
    isFavorite.removeAt(index)  Text("No Data");
    update();
  }
*//*

  void removeFromFavorite(Map<String, dynamic> data) {
    int itemIndex = items.indexOf(data);
    isFavorite[itemIndex] = false;
    update();
  }
*/

}
