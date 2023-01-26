import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_manager_app/src/core/routing/wrappers/main_wrapper.dart';
import 'package:task_manager_app/src/features/home/home_screen.dart';
import 'package:task_manager_app/src/features/managment/managment_screen.dart';
import 'package:task_manager_app/src/features/navigation_screen.dart';
import 'package:task_manager_app/src/features/start/start_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartScreen, initial: true),
    AutoRoute(page: MainWrapper, name: 'MainRoute', children: [
      AutoRoute(path: '', page: NaviagtionScreen, children: [
        AutoRoute(
          initial: true,
          path: 'home',
          page: HomeScreen,
        ),
      ]),
      AutoRoute(path: 'managment', page: ManagmentScreen),
    ]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
