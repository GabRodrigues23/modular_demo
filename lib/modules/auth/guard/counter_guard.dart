import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/auth/controllers/auth_controller.dart';

class CounterGuard extends RouteGuard {
  CounterGuard() : super(redirectTo: '/');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    final auth = Modular.get<AuthController>();
    final user = path.split('/').last;

    return await auth.checkUserLoggedToRouter(user);
  }
}
