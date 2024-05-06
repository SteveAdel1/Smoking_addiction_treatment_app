import 'package:app/config/application_theme_manager.dart';
import 'package:app/config/pages_route_names.dart';
import 'package:app/config/routes.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey globalKey = GlobalKey();


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taafi app',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.darkTheme,
      //darkTheme: ApplicationThemeManager.darkTheme,
      initialRoute: PagesRouteNames.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
      navigatorKey: navigatorKey,
    );
  }
}


