import 'package:flutter/material.dart';
import 'package:me/views/profile_screen/profile.dart';
import '../favorite_screen/Browse_page.dart';
import '../order_history/order_history.dart';
import '../cart_screen/cart_navigarionbar.dart';
import 'home_screen.dart';

class Navigation_Var extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Navigation_Var> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home_Screen(),
    Browse_Page(),
    Cart_Navigation_Bar(),
    Order_History(),
    Profile_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.history_edu_outlined),
            label: 'Order History',
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Color(0xff33907C),
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          color: Colors.deepOrange,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.redAccent
        ),
      ),
    );
  }
}

