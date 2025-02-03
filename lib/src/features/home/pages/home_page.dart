import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/home_image.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/intro_component_page.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/service_card.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isMobileSize = screenSize.width < 1000;
    final theme = AppTheme.of(context)!;
    return Scaffold(
        backgroundColor: theme.colors.bgColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: screenSize.height,
              width: screenSize.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  HomeImage(image: "assets/images/outils.jpg"),
                  SvgPicture.asset(
                    height: 400,
                    width: 400,
                    "assets/images/Logo.svg",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Services",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: screenSize.height,
              width: screenSize.width,
              child: Stack(
                children: [
                  HomeImage(image: "assets/images/face.jpg"),
                  Column(
                    children: [
                      Text(
                        "Service",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      ServiceCard(
                          title: "Haire",
                          assetIcon: "assets/images/icon_scissors.svg",
                          description:
                              "dsdasdasdasdasdddddddddddddfasdfasdfdasdasdasdasdasdas"),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
