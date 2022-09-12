import 'package:fizikl/blocs/blocs.dart';
import 'package:fizikl/blocs/login/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/login/login_screen.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key, required this.userRepository}) : super(key: key);

  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: userRepository,
      child: BlocProvider(
        create: (context) {
          return LoginBloc(
            userRepository
          );
        },
        child: const LoginScreen(),
      ),
    );
  }

}