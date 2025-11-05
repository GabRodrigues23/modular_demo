import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/auth/auth_module.dart';
import 'package:modular_demo/modules/auth/controllers/auth_controller.dart';
import 'package:modular_demo/modules/auth/guard/auth_guard.dart';
import 'package:modular_demo/modules/auth/guard/counter_guard.dart';
import 'package:modular_demo/modules/counter/counter_module.dart';
import 'package:modular_demo/modules/free/free_module.dart';
import 'package:modular_demo/modules/home/home_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModule extends Module {
  final SharedPreferences prefs;

  AppModule({required this.prefs});

  @override
  void binds(Injector i) {
    super.binds(i);

    i.addLazySingleton<SharedPreferences>(() => prefs);

    i.addLazySingleton(() => AuthController(prefs: i.get()));
  }

  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.module('/', module: AuthModule());
    r.module('/home', module: HomeModule(), guards: [AuthGuard()]);
    r.module('/counter',
        module: CounterModule(prefs: prefs),
        guards: [AuthGuard(), CounterGuard()]);
    r.module('/free', module: FreeModule());
  }
}
