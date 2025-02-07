import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/intro_component_page.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final locale = AppLocale.of(context)!;
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [IntroComponentPage(title: locale.contactUS)],
    ));
  }
}
