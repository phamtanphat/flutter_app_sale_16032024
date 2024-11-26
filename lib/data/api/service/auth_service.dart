import 'package:dio/dio.dart';
import 'package:flutter_app_sale_16032024/data/api/dio_client.dart';

class AuthService {
   final _dioClient = DioClient.getInstance().getDio();
  
   Future<Response<dynamic>> requestSignIn(String email, String password) {
     return _dioClient.post("user/sign-in", data: {
       "email": email,
       "password": password
     });
   }
}