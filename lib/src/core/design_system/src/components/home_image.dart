import 'dart:ui';

import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  final String image;
  const HomeImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Image.asset(
        height: screenSize.height,
        width: screenSize.width,
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
