import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:barber_shop_app/src/core/design_system/src/components/book_appointment_button.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:barber_shop_app/src/core/routing/app_router.gr.dart';
import 'package:barber_shop_app/src/features/home/widgets/nav_menu/nav_menu_button.dart';
import 'package:flutter/material.dart';

class NavMenuWidget extends StatelessWidget {
  final int selectedItemIndex;
  final Function(int index) onChange;

  const NavMenuWidget(
      {super.key, required this.selectedItemIndex, required this.onChange});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocale.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavMenuButton(
                      label: locale.home,
                      onTap: () => onChange(0),
                      isSelected: selectedItemIndex == 0),
                  SizedBox(width: 25),
                  NavMenuButton(
                      label: locale.services,
                      onTap: () => onChange(1),
                      isSelected: selectedItemIndex == 1),
                  SizedBox(width: 25),
                  NavMenuButton(
                      label: locale.aboutUs,
                      onTap: () => onChange(2),
                      isSelected: selectedItemIndex == 2),
                  SizedBox(width: 25),
                  NavMenuButton(
                      label: locale.contactUS,
                      onTap: () => onChange(3),
                      isSelected: selectedItemIndex == 3),
                ],
              )),
        ],
      ),
    );
  }
}
