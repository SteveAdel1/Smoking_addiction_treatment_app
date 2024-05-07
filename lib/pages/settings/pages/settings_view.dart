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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding:const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
          width: mediaQuery.width,
          height: mediaQuery.height * 0.2,
          color:const Color(0xFF5D9CEC),
          child: Text(
            "Settings",
            style: theme.textTheme.titleLarge,
          ),
        ),
        Padding(
          padding:const EdgeInsets.all(35),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              "local.language",
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropdown(
              items: langs,
              decoration: CustomDropdownDecoration(
              //  closedFillColor:
              //  vm.isDark() ? Color(0xFF141922) : Color(0xFFFFFFFF),
              //  expandedFillColor:
              //  vm.isDark() ? Color(0xFF141922) : Color(0xFFFFFFFF),
              ),
              //initialItem: vm.currentLanguage == "en" ? "English" : "عربى",
              onChanged: (value) {

              },
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "local.theme",
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomDropdown(
              items: Themes,
              initialItem: "Dark",
              decoration: CustomDropdownDecoration(
               // closedFillColor:
                //vm.isDark() ? const Color(0xFF141922) :const Color(0xFFFFFFFF),
                //expandedFillColor:
                //vm.isDark() ? const Color(0xFF141922) :const Color(0xFFFFFFFF),
              ),
              onChanged: (value) {}
            )
          ]),
        )
      ],
    );
  }
}
