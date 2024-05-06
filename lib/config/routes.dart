import 'package:app/config/pages_route_names.dart';
import 'package:app/pages/account/pages/account_view.dart';
import 'package:app/pages/following/pages/following_view.dart';
import 'package:flutter/material.dart';
import '../pages/home/pages/home_view.dart';
import '../pages/layout_view/pages/layout_view.dart';
import '../pages/settings/pages/settings_view.dart';
import '../pages/splash/pages/splash_view.dart';

class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case PagesRouteNames.homeView:
        return MaterialPageRoute(
          builder: (context) =>  HomeView(),
        );
      case PagesRouteNames.accountView :
        return MaterialPageRoute(builder: (context) => const AccountView(),);
      case PagesRouteNames.followingView:
        return MaterialPageRoute(builder: (context) => FollowingView(),);
      case PagesRouteNames.settingsView:
        return MaterialPageRoute(builder: (context) => SettingsView(),);
      case PagesRouteNames.layoutView:
        return MaterialPageRoute(builder: (context) => LayoutView(),);
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
    }
  }
}
