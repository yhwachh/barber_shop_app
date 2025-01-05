import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isMobileSize = screenSize.width < 1000;
    return SizedBox(
      height: screenSize.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/outils.jpg", fit: BoxFit.cover),
          // Le filtre flou appliqué
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.7), // Transparent
            ),
          ),
          Image.asset(
            "assets/images/logo.png",
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
