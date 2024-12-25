import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/features/web_app.dart';

/// To run app									- .runApplication
abstract class AppRunner {
  // Méthode statique publique pour lancer l'application Web
  static void runWebApp() => _run(const WebApp());

  // Méthode statique privée qui initialise l'application avec ProviderScope
  static void _run(Widget child) => runApp(ProviderScope(child: child));
}
