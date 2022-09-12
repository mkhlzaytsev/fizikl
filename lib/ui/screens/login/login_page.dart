import 'package:fizikl/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {

  TextEditingController? usernameController;
  TextEditingController? passwordController;

  @override
  void initState() {
    super.initState();

    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                label: Text('Username'),
                hintText: 'Input username'
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('Password'),
                hintText: 'Input password',
              ),
            ),
            InkWell(
              child: const Text('Login'),
              onTap: () => context.read<LoginBloc>().add(
                  LoginRequired(
                      username: usernameController!.value.text,
                      password: passwordController!.value.text
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}