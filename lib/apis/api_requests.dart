import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  final String apiUrl = 'https://yourapi.com/user_auth';

  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        if (decodedResponse['msg'] == 'success') {
          Fluttertoast.showToast(msg: 'Login successful');
        } else {
          Fluttertoast.showToast(msg: decodedResponse['msg']);
        }
      } else {
        Fluttertoast.showToast(msg: 'Server error: ${response.statusCode}');
      }
    } catch (error) {
      Fluttertoast.showToast(msg: 'Oops an error occurred');
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/forgot_password'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email}),
      );

      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        if (decodedResponse['msg'] == 'success') {
          Fluttertoast.showToast(msg: 'Password reset email sent');
        } else {
          Fluttertoast.showToast(msg: decodedResponse['msg']);
        }
      } else {
        Fluttertoast.showToast(msg: 'Server error: ${response.statusCode}');
      }
    } catch (error) {
      Fluttertoast.showToast(msg: 'Oops an error occurred');
    }
  }

  Future<void> createAccount(String email, String password, String confirmPassword) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        if (decodedResponse['msg'] == 'success') {
          Fluttertoast.showToast(msg: 'Account created successfully');
        } else {
          Fluttertoast.showToast(msg: decodedResponse['msg']);
        }
      } else {
        Fluttertoast.showToast(msg: 'Server error: ${response.statusCode}');
      }
    } catch (error) {
      Fluttertoast.showToast(msg: 'Oops an error occurred');
    }
  }
}
