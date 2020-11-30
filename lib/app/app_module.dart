import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:modularization_poc_03/app/app_event_bus_navigator.dart';
import 'package:modularization_poc_03/app/app_widget.dart';
import 'package:modularization_poc_03/app/modules/home/home_module.dart';

import 'package:recovery_password/recovery_password.dart';
import 'package:authentication/authentication.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [Bind((i) => AppEventBusNavigator(), lazy: false)];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/recovery_password', module: RecoveryPasswordModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
