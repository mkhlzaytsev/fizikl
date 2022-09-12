import 'package:fizikl/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginAuthorized) {
            return Center(
              child: Column(
                children: [
                  Text(state.user.username),
                  Image.network(state.imgURl),
                ],
              )
            );
          }
          else if (state is LoginUnauthorized) {
            return Center(
              child: Image.network(state.imgURl),
            );
          }

          return Scaffold();
        },
      ),
    );
  }
}