import 'package:auto_route/auto_route.dart';
import 'package:barber_shop_app/src/features/home/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
