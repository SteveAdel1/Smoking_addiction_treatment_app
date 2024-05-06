import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Constants{
  static var mediaQuery= MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);
}