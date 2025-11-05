import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/auth/pages/login_page.dart';

class AuthModule extends Module {
  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child('/', child: (_) => LoginPage());
  }
}
