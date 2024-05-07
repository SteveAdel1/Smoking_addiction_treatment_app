import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:app/pages/settings/view_model/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  List<String> langs = ["English", "عربى"];
  List<String> Themes = ["Light", "Dark"];
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var vm = BlocProvider.of<SettingsCubit>(context);
    return Center(child: Text("dsvgefdhr"),);
  }
}
