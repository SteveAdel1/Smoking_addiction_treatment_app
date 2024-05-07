import 'package:app/pages/settings/view_model/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SettingsCubit extends Cubit<ThemeState> {
  SettingsCubit() : super(ThemeState(isDarkMode: false)); // Default to Light mode

  void toDarkMode() {
    emit(ThemeState(isDarkMode: true));
  }

  void toLightMode() {
    emit(ThemeState(isDarkMode: false));
  }

}