import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/controller/home_controller.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  List<String> _imageslider = [
    'assets/slider 2.jpg',
    'assets/slider 3.jpg',
    'assets/slider 4.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (GetxController controller) {
      return SizedBox(     //imge slider start
        height: 250,
        width: double.infinity,
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            ), items: _imageslider.map((e) => Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(e)),
            )
        ),
        ).toList()),
      );

    },);
  }
}

