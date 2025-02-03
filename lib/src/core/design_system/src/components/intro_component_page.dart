import 'package:flutter/material.dart';

class IntroComponentPage extends StatelessWidget {
  final String title;

  const IntroComponentPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 11, 11, 11),
      width: size.width,
      height: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
