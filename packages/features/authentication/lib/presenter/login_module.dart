import 'package:flutter_modular/flutter_modular.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
