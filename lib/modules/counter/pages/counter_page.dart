import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/counter/controllers/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key, required this.userName});
  final CounterController controller = Modular.get<CounterController>();
  final String userName;

  @override
  Widget build(BuildContext context) {
    controller.getUserCounter(userName);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter',
          style: TextStyle(fontSize: 42),
        ),
        backgroundColor: const Color(0xFF2C5163),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ValueListenableBuilder<int>(
                valueListenable: controller.counter,
                builder: (_, value, __) => Text(
                  'Count: $value',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      fixedSize: Size(200, 50)),
                  onPressed: controller.increment,
                  child: Text('Adicionar Moeda')),
            ],
          ),
        ),
      ),
    );
  }
}
