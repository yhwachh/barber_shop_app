import 'package:barber_shop_app/src/core/design_system/app_ui.dart';
import 'package:barber_shop_app/src/core/locale/l10n.dart';
import 'package:barber_shop_app/src/core/providers/widgets/scaffold_messenger_provider.dart';
import 'package:barber_shop_app/src/core/routing/provider/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/routing/provider/navigation_observer_provider.dart';

class WebApp extends ConsumerStatefulWidget {
  const WebApp({super.key});

  @override
  ConsumerState<WebApp> createState() => _WebAppState();
}

class _WebAppState extends ConsumerState<WebApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = ref.read(routerProvider);
    final navigationObserver = ref.watch(navigationObserverProvider);
    return AppTheme(
      data: AppThemeData.light(),
      child: MaterialApp.router(
        title: 'Barber Shop App',
        locale: Locale("fr"),
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: ref.read(scaffoldMessengerProvider),
        routerConfig: appRouter.config(
          //initialRoutes: [const SplashRoute()],
          navigatorObservers: () => [navigationObserver],
          //deepLinkBuilder: DeepLinksServices.navigateDeepLink
        ),
        supportedLocales: L10n.all,
        localizationsDelegates: AppLocale.localizationsDelegates,
      ),
    );
  }
}
