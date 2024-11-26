import 'package:flutter_app_sale_16032024/data/api/dto/user_dto.dart';
import 'package:flutter_app_sale_16032024/data/api/service/auth_service.dart';

import '../api/dto/app_dto.dart';

class AuthRepository {
  AuthService? _authService;

  void setApiService(AuthService service) {
    _authService = service;
  }

  void signIn(String email, String password) {
    _authService?.requestSignIn(email, password).then((json) { 
      var data = AppDTO.fromJSON(json.data, UserDTO.parser);
      print(data.toString());
    });
  }
}


void main() {
  var repo = AuthRepository()..setApiService(AuthService());
  repo.signIn("demo1@gmail.com", "123456789");
}