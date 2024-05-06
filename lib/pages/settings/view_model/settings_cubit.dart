import 'package:app/pages/settings/view_model/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() :super(LightState());

  ThemeMode currentTheme = ThemeMode.light;
  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  changeThemeMode(ThemeMode newThemeMode) {
    print(newThemeMode);
    if (newThemeMode == currentTheme) return;
    currentTheme = newThemeMode;
    emit(DarkState());
    //emit(LightState());
  }
}