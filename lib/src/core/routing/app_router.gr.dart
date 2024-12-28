// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:barber_shop_app/src/features/home/pages/about_us_page.dart'
    as _i1;
import 'package:barber_shop_app/src/features/home/pages/contact_page.dart'
    as _i2;
import 'package:barber_shop_app/src/features/home/pages/home_page.dart' as _i3;
import 'package:barber_shop_app/src/features/home/pages/hours_page.dart' as _i4;
import 'package:barber_shop_app/src/features/home/pages/prices_page.dart'
    as _i6;
import 'package:barber_shop_app/src/features/home/pages/services_page.dart'
    as _i7;
import 'package:barber_shop_app/src/features/main_page.dart' as _i5;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AboutUsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutUsPage(),
      );
    },
    ContactRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ContactPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    HoursRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HoursPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    PricesRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PricesPage(),
      );
    },
    ServicesRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ServicesPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutUsPage]
class AboutUsRoute extends _i8.PageRouteInfo<void> {
  const AboutUsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AboutUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutUsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ContactPage]
class ContactRoute extends _i8.PageRouteInfo<void> {
  const ContactRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HoursPage]
class HoursRoute extends _i8.PageRouteInfo<void> {
  const HoursRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HoursRoute.name,
          initialChildren: children,
        );

  static const String name = 'HoursRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PricesPage]
class PricesRoute extends _i8.PageRouteInfo<void> {
  const PricesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PricesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PricesRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ServicesPage]
class ServicesRoute extends _i8.PageRouteInfo<void> {
  const ServicesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
