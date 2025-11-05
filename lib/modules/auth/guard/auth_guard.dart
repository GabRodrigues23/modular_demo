import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/auth/controllers/auth_controller.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    final auth = Modular.get<AuthController>();

    return await auth.checkUserLogged();
  }
}
