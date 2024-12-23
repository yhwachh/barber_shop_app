import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef AppLocale = AppLocalizations;

final l10nProvider = Provider<AppLocale>((ref) {
  final locale = L10n.defaultLocale;

  ref.state = lookupAppLocalizations(locale);

  return ref.state;
});

class L10n {
  static final all = [
    const Locale('en', 'US'),
    const Locale('fr', "FR"),
  ];

  static Locale get defaultLocale => const Locale('en', 'US');
}
