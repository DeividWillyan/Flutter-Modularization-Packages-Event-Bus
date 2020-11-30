import 'package:flutter_modular/flutter_modular.dart';

import 'recovery_password_page.dart';

class RecoveryPasswordModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => RecoveryPasswordPage()),
      ];

  static Inject get to => Inject<RecoveryPasswordModule>.of();
}
