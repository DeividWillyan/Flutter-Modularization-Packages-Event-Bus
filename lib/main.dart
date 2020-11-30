import 'package:flutter/material.dart';
import 'package:modularization_poc_03/app/app_event_bus_navigator.dart';
import 'package:modularization_poc_03/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  AppEventBusNavigator();
  runApp(ModularApp(module: AppModule()));
}
