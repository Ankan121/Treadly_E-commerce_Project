import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:me/api_call_demo.dart';
import '../auth_screen/login_page.dart';
import 'onboarding_model.dart';

class OnBoarding_Page_1 extends StatefulWidget {
  const OnBoarding_Page_1({super.key});

  @override
  State<OnBoarding_Page_1> createState() => _OnBoarding_Page_1State();
}

class _OnBoarding_Page_1State extends State<OnBoarding_Page_1> {
  PageController _pageController = PageController();
  int currentIndex = 0;
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: 0);
  }
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff33907C),
        body: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Color(0xffFFFFFF),
              margin: const EdgeInsets.only(top: 390),
            ),
            Column(
            children:[
              Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                  itemCount: contents.length, itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [Stack(
                        children: [
                          Center(
                            child: Container(
                            height:400,
                            width: 340,
                              margin: const EdgeInsets.only(top: 191),
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Image.asset(contents[index].image.toString(),),
                                Text(
                                  contents[index].title.toString(),
                                  style: TextStyle(fontSize: 20,color: Color(0xff33907C)),
                                ),
                                Text(
                                  contents[index].desctription.toString(),
                                  style: TextStyle(fontSize: 20,color: Color(0xff33907C)),
                                ),
                                //Text("Empowering Artisans,",style: TextStyle(fontSize: 20,color: Color(0xff33907C)),),
                                //Text("Farmers & Micro Business,",style: TextStyle(fontSize: 20,color: Color(0xff33907C)),)
                              ],
                            ),
                        ),
                          ),


                ]
                      ),
                ]
                    );
              },

              ),
            ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      ...List.generate(contents.length, (index) => Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: currentIndex == index? 20 : 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),)),
                    ],
                  ),
                ),
              ),

              Container(
                height: 48,
                width: 306,
                margin: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Color(0xff33907C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  onPressed: () {
                    if(currentIndex == contents.length -1){
                      Get.to(const Api_Call_Demo());
                    }
                    _pageController.nextPage(duration: Duration(microseconds: 100), curve: Curves.bounceIn);
                  },
                  child: Text(currentIndex == contents.length -1?"Finish":"Next",style: TextStyle(color: Colors.white),),
                ),
              ),
      ],
          ),

    ],
        ),
      ),
    );
  }
}
/*
class onboardingmodel{
  String? image;
  String? title;
  String? desctription;
}*/
