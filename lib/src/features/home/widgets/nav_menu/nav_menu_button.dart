import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavMenuButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isSelected;
  const NavMenuButton(
      {super.key, required this.label, this.onTap, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return UITap(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedDefaultTextStyle(
              style: GoogleFonts.kodchasan(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? UIColorToken.neu400 : Colors.white,
              ),
              duration: Durations.medium2,
              child: Text(label))),
    );
  }
}
