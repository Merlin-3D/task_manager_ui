// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    StartRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const StartScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainWrapper(),
      );
    },
    NaviagtionRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NaviagtionScreen(),
      );
    },
    ManagmentRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ManagmentScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          StartRoute.name,
          path: '/',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-wrapper',
          children: [
            RouteConfig(
              NaviagtionRoute.name,
              path: '',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: NaviagtionRoute.name,
                  redirectTo: 'home',
                  fullMatch: true,
                ),
                RouteConfig(
                  HomeRoute.name,
                  path: 'home',
                  parent: NaviagtionRoute.name,
                ),
              ],
            ),
            RouteConfig(
              ManagmentRoute.name,
              path: 'managment',
              parent: MainRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [StartScreen]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [MainWrapper]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main-wrapper',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [NaviagtionScreen]
class NaviagtionRoute extends PageRouteInfo<void> {
  const NaviagtionRoute({List<PageRouteInfo>? children})
      : super(
          NaviagtionRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'NaviagtionRoute';
}

/// generated route for
/// [ManagmentScreen]
class ManagmentRoute extends PageRouteInfo<void> {
  const ManagmentRoute()
      : super(
          ManagmentRoute.name,
          path: 'managment',
        );

  static const String name = 'ManagmentRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}
