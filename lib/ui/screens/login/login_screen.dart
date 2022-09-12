import 'package:fizikl/blocs/blocs.dart';
import 'package:fizikl/ui/screens/login/login_page.dart';
import 'package:fizikl/ui/screens/login/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Fizikl'),
          ),
          body: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginInitial) {
                return const LoginPage();
              }
              else if (state is LoginInProcess) {
                return const Center();
              }
              else if (state is LoginAuthorized || state is LoginUnauthorized) {
                return const ProfilePage();
              }

              return Scaffold();
              },
          )
        )
    );
  }

}