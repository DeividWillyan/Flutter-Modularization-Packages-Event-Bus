import 'package:flutter/material.dart';
import 'package:modularization_poc_03/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:custom_event_bus/custom_event_bus.dart';

void main() {
  CustomEventBus.bus.on<Events>().listen((Events event) {
    switch (event) {
      case Events.AUTHENTICATION_SUCCESS:
        Modular.to.pushNamedAndRemoveUntil('/home', (_) => false);
        break;
      case Events.RECOVERY_PASSWORD:
        Modular.to.pushNamed('/recovery_password');
        break;
      case Events.LOGOUT:
        Modular.to.pushNamedAndRemoveUntil('/login', (_) => false);
        break;
      default:
        Modular.to.pushNamed('/login');
    }
  });

  runApp(ModularApp(module: AppModule()));
}
