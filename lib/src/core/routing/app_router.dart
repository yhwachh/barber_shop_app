import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(
            page: HomeRoute.page,
            path: 'home',
          ),
          AutoRoute(
            page: ServicesRoute.page,
            path: 'service',
          ),
          AutoRoute(
            page: AboutUsRoute.page,
            path: 'aboutUs',
          ),
          AutoRoute(
            page: ContactRoute.page,
            path: 'contact',
          ),
        ])
      ];
}
