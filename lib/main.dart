import 'package:app/config/application_theme_manager.dart';
import 'package:app/config/pages_route_names.dart';
import 'package:app/config/routes.dart';
import 'package:app/pages/settings/view_model/settings_cubit.dart';
import 'package:app/pages/settings/view_model/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey globalKey = GlobalKey();


void main() async{

  //init hive
 //await Hive.initFlutter();
  runApp(BlocProvider(
      create: (context) => SettingsCubit(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit,ThemeState>(
      builder: (context,state) {
        return MaterialApp(
          title: 'Taafi app',
          debugShowCheckedModeBanner: false,
          // theme: ApplicationThemeManager.lightTheme,
          // darkTheme: ApplicationThemeManager.darkTheme,
          theme: context.read<SettingsCubit>().state.isDarkMode?ApplicationThemeManager.darkTheme:ApplicationThemeManager.lightTheme,
          // theme: ThemeData.dark(),
          initialRoute: PagesRouteNames.initial,
          onGenerateRoute: Routes.onGenerateRoutes,
          navigatorKey: navigatorKey,
        );
      }
    );
  }
}


