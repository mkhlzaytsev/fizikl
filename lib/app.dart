import 'package:fizikl/blocs/login/repository/user_repository.dart';
import 'package:fizikl/ui/app_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppView(userRepository: UserRepository());
  }
}