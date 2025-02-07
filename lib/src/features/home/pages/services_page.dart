import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/intro_component_page.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/service_card.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocale.of(context)!;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [IntroComponentPage(title: locale.services)],
    ));
  }
}
