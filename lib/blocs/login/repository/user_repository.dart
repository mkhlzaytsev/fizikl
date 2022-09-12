import 'dart:math';

import 'package:fizikl/blocs/login/models/user.dart';

class UserRepository {

  Future<User> makeUser(String username, String password) async {
    return Future.delayed(const Duration(seconds: 1), () {
      var randValue = Random();

      if (randValue.nextInt(100) > 50) {
        return User(username: username, password: password);
      }
      else {
        throw Exception('Something went wrong');
      }
    }
    );
  }

}