import 'package:flutter/material.dart';

class FreePage extends StatelessWidget {
  const FreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Free Page',
          style: TextStyle(fontSize: 42),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Página acessada fora do login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
