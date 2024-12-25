import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
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
          Expanded(child: SizedBox.shrink()),
          Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavMenuButton(
                      label: locale.home,
                      onTap: () => onChange(0),
                      isSelected: selectedItemIndex == 0),
                  NavMenuButton(
                      label: locale.aboutUs,
                      onTap: () => onChange(1),
                      isSelected: selectedItemIndex == 1),
                  NavMenuButton(
                      label: locale.services,
                      onTap: () => onChange(2),
                      isSelected: selectedItemIndex == 2),
                  NavMenuButton(
                      label: locale.prices,
                      onTap: () => onChange(3),
                      isSelected: selectedItemIndex == 3),
                  NavMenuButton(
                      label: locale.hours,
                      onTap: () => onChange(4),
                      isSelected: selectedItemIndex == 4),
                  NavMenuButton(
                      label: locale.contactUS,
                      onTap: () => onChange(5),
                      isSelected: selectedItemIndex == 5),
                ],
              )),
          Expanded(child: SizedBox.shrink()),
        ],
      ),
    );
  }
}
