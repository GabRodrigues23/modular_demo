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
        title: Text('Counter'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: controller.counter,
              builder: (_, value, __) => Text('Count: $value'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: controller.increment,
                child: Text('Adicionar Moeda')),
          ],
        ),
      ),
    );
  }
}
