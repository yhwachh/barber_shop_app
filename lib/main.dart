import 'dart:async';

import 'package:flutter/material.dart';

import 'config/app_runner.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    AppRunner.runWebApp();
  }, (error, stack) {
    // Log the error to a tracking system
    print('Caught an error: $error');
    print('Stack trace: $stack');
    // Optionally report to a crash analytics service like Firebase Crashlytics or Sentry
  });
}
