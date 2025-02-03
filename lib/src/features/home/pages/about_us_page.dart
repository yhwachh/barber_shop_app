import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/intro_component_page.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocale.of(context)!;
    final screenSize = MediaQuery.of(context).size;
    final isMobileSize = screenSize.width < 1000;
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [IntroComponentPage(title: locale.aboutUs)],
    ));
  }
}
