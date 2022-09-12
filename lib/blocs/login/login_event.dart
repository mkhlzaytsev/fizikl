part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginRequired extends LoginEvent {
  const LoginRequired({
    required this.username,
    required this.password
  });

  final String username;
  final String password;

  @override
  List<Object?> get props => [username, password];
}
