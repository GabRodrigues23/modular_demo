import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/home/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(fontSize: 42),
        ),
        backgroundColor: const Color(0xFF2C5163),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, fixedSize: Size(140, 50)),
                  onPressed: () {
                    Modular.to.pushNamed('/counter/${controller.user}');
                  },
                  child: Text('Go to Counter'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, fixedSize: Size(140, 50)),
                  onPressed: () {
                    controller.logout();
                  },
                  child: Text('Logout'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
