import 'package:event_bus/event_bus.dart';

enum Events {
  AUTHENTICATION_SUCCESS,
  RECOVERY_PASSWORD,
  LOGOUT,
}

class CustomEventBus {
  CustomEventBus._internal();
  static final CustomEventBus _singleton = CustomEventBus._internal();
  factory CustomEventBus() => _singleton;

  EventBus _bus = EventBus();

  static EventBus get bus => _singleton._bus;

  static emit(Events event) {
    _singleton._bus.fire(event);
  }
}
