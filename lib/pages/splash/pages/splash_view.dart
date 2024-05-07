import 'dart:async';

import 'package:app/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/pages_route_names.dart';
import '../../../config/widgets/custom_background_widget.dart';
import '../../../main.dart';
import '../../settings/view_model/settings_cubit.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 2),
        () => navigatorKey.currentState!
            .pushReplacementNamed(PagesRouteNames.layoutView));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Container(

        decoration:  BoxDecoration(
          color:BlocProvider.of<SettingsCubit>(context).state.isDarkMode ?
           Color(0xFF23374D) : Colors.white ,
            image: DecorationImage(
          image: AssetImage(
            "assets/images/splash.png",
          ),
          //fit: BoxFit.cover
        )),
      ),
    );
  }
}
