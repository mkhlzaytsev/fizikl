import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fizikl/blocs/login/models/user.dart';
import 'package:fizikl/blocs/login/repository/user_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  LoginBloc(UserRepository userRepository
      ) : _userRepository = userRepository,
          super(LoginInitial()) {
    on<LoginRequired>(_loginRequested);
  }

  final UserRepository _userRepository;

  void _loginRequested(LoginRequired event, Emitter<LoginState> emit) async {
    emit(LoginInProcess());

    try {
      User user = await _userRepository
          .makeUser(event.username, event.password);

      emit(LoginAuthorized(user: user));
    }
    catch (e) {
      emit(LoginUnauthorized());
    }
  }

}
