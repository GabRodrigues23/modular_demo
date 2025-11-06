import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_demo/modules/auth/controllers/auth_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController controller = Modular.get<AuthController>();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          style: TextStyle(fontSize: 42),
          'Login',
        ),
        backgroundColor: const Color(0xFF2C5163),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.paid,
                size: 150,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 4)],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Usuário'),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          fixedSize: Size(140, 50)),
                      onPressed: () {
                        controller.login(textEditingController.text);
                      },
                      child: Text('Login')),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(150, 50)),
                    onPressed: () {
                      Modular.to.pushNamed('/free/');
                    },
                    child: Text('Free'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
