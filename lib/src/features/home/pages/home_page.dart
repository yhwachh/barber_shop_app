import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      width: screenSize.width,
      child: Image.asset(
        "assets/images/barber_shop.webp",
        fit: BoxFit.cover,
      ),
    );
  }
}
