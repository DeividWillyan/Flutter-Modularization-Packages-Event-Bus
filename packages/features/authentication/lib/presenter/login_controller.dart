import 'package:custom_event_bus/custom_event_bus.dart';

class LoginController {
  String user;
  String password;

  Future<bool> login() async {
    await Future.delayed(Duration(seconds: 2));
    if (user == 'deivid' && password == '123') {
      CustomEventBus.emit(Events.AUTHENTICATION_SUCCESS);
      return true;
    } else {
      return false;
    }
  }

  void recoveryPassword() => CustomEventBus.emit(Events.RECOVERY_PASSWORD);
}
