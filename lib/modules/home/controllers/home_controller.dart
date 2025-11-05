import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/auth/controllers/auth_controller.dart';

class HomeController {
  void logout() {
    Modular.get<AuthController>().logout();
  }

  String get user {
    return Modular.get<AuthController>().userLog;
  }
}
