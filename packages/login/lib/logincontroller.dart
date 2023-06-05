import 'dart:convert';
import 'package:get/get.dart';
import 'package:login/login_interface.dart';
import 'package:http/http.dart' as http;
import 'package:login/model/login_model.dart';


class LoginController extends GetxController implements LoginInterface {
  @override
  LoginRequest requestModel = LoginRequest(email: "", pin: "");

  Future<bool> login(String email, String pin) async {
    final response = await http.post(
      Uri.https("still-cliffs-72541.herokuapp.com", "/api/login"),
      headers: {
        'content-Type': 'application/json',
      },
      body: jsonEncode(requestModel.toJson()),
    );
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}


