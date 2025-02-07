import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'config/app_runner.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    if (kIsWasm) {
      await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvy536IiKX_fvDwdOHBJfNv5f_1GCIpoA",
            projectId: "barber-shop-web-app-5c196",
            messagingSenderId: "765324286502",
            appId: "1:765324286502:web:b0bfc070b1a843b9ec24e7"),
      );
    } else {
      await Firebase.initializeApp();
    }

    AppRunner.runWebApp();
  }, (error, stack) {
    // Log the error to a tracking system
    print('Caught an error: $error');
    print('Stack trace: $stack');
    // Optionally report to a crash analytics service like Firebase Crashlytics or Sentry
  });
}
