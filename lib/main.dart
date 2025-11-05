import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:modular_demo/app/app_module.dart';
import 'package:modular_demo/app/app_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(ModularApp(module: AppModule(prefs: prefs), child: AppWidget()));
}
