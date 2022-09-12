part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginInProcess extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginAuthorized extends LoginState {
  const LoginAuthorized({required this.user});

  final User user;
  final String imgURl = 'https://d1.skrinshoter.ru/s/250422/xnoyYOGB.png';

  @override
  List<Object> get props => [user, imgURl];
}

class LoginUnauthorized extends LoginState {
  final String imgURl = 'https://d1.skrinshoter.ru/s/250422/zJXaVrly.png';

  @override
  List<Object> get props => [imgURl];
}
