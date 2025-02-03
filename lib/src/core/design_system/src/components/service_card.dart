import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String? assetIcon;
  const ServiceCard(
      {super.key,
      required this.title,
      required this.assetIcon,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: theme.colors.textColor, width: 2),
      ),
      child: Center(
        child: SizedBox(
          height: 180,
          width: 180,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgPicture.asset(
              assetIcon!,
              height: 60,
              width: 60,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ]),
        ),
      ),
    );
  }
}
