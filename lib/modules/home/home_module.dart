import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/home/controllers/home_controller.dart';
import 'package:modular_demo/modules/home/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    super.binds(i);

    i.addLazySingleton(() => HomeController());
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child('/', child: (_) => HomePage());
  }
}
