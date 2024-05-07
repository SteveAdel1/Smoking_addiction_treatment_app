import 'package:app/pages/settings/view_model/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/settings/view_model/settings_state.dart';
import '../constants/constants.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Constants.mediaQuery.width,
        height: Constants.mediaQuery.height * 0.30,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, right: 10, left: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Theme",
                    textAlign: TextAlign.center,
                    style: Constants.theme.textTheme.bodyLarge
                        ?.copyWith(color: Colors.black),
                  ),
                  BlocBuilder<SettingsCubit,ThemeState>(
                      builder: (context,state) {
                        return ToggleButtons(
                          onPressed: (index) {
                            if (index == 0) {
                              context.read<SettingsCubit>().toDarkMode();
                            } else if (index == 1) {
                              context.read<SettingsCubit>().toLightMode();
                            }
                          },
                          children: <Widget>[Text("Dark"), Text("Light")],
                          isSelected: [
                            state.isDarkMode, // Assuming `state` is of type `ThemeState`
                            !state.isDarkMode, // Assuming `state` is of type `ThemeState`
                          ],
                          color: Colors.grey,
                          selectedColor: Colors.white,
                          fillColor: Colors.blue,
                          borderColor: Colors.grey,
                          selectedBorderColor: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        );
                      }),

                ],
              ),
            ),
            Text("Change Language",style: TextStyle(color :Colors.black),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black87)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(" ع",style: Constants.theme.textTheme.bodyMedium?.copyWith(color: Colors.black,fontSize: 22),),
                      SizedBox(
                        width: 15,
                      ),
                      Text("العربية",style: Constants.theme.textTheme.bodyMedium?.copyWith(color: Colors.black,fontSize: 22))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Divider(),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                        children: [
                          Text("E",style: Constants.theme.textTheme.bodyMedium?.copyWith(color: Colors.black)),
                          SizedBox(
                            width: 15,
                          ),
                          Text("English",style: Constants.theme.textTheme.bodyMedium?.copyWith(color: Colors.black))
                        ]),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );

  }
}
