import 'package:flutter/material.dart';
import 'package:flutter_app/extensions/x_extensions.dart';

import '../../../widgets/x_widgets.dart';
import '../../home/x_homes.dart';
import '../x_auths.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 64.0),
            //logo flutter
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(height: 16.0),
            //title Code with Bahri
            const Text(
              'Code with Bahri',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 48.0),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 28.0),
            MyButtons.primary(context, 'Login', () {
              context.push(HomePage());
            }),
            const SizedBox(height: 16.0),
            //register page
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    context.push(RegisterPage());
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
