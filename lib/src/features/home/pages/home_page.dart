import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isMobileSize = screenSize.width < 1000;
    return SizedBox(
        height: isMobileSize ? 450 : screenSize.height,
        child: CarouselSlider(
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: isMobileSize ? 300 : screenSize.height * 0.8,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3)),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: screenSize.width * 0.75,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset(
                      'assets/images/barber_shop.webp',
                      fit: BoxFit.cover,
                    ));
              },
            );
          }).toList(),
        ));
  }
}
