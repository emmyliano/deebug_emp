import 'dart:convert';
import 'package:deebup_emp/homepage.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class AuthService {
  final String apiUrl = 'https://yourapi.com/user_auth'; // TODO: must update here with endpoint url

  Future<void> login(BuildContext context, email, String password) async { // TODO: When properly implemented push, remove BuildContext
    // Validate email
    if (!email.contains('@')) {
      Fluttertoast.showToast(msg: 'Email must contain @ symbol');
      return; // Exit the method early
    }

    // Validate password
    if (password.length < 8) {
      Fluttertoast.showToast(msg: 'Password must be up to 8 characters');
      return; // Exit the method early
    }

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

          // TODO: properly implement the push when done
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Homepage()));
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
    // Validate email
    if (!email.contains('@')) {
      Fluttertoast.showToast(msg: 'Email must contain @ symbol');
      return; // Exit the method early
    }

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

  Future<void> createAccount(String fullName, email, String number,
      String password, confirmPassword) async {
    // Validate email
    if (!email.contains('@')) {
      Fluttertoast.showToast(msg: 'Email must contain @ symbol');
      return; // Exit the method early
    }

    // Validate password
    if (password.length < 8) {
      Fluttertoast.showToast(msg: 'Password must be up to 8 characters');
      return; // Exit the method early
    }

    // Validate passwords
    if (password != confirmPassword) {
      Fluttertoast.showToast(msg: 'Passwords do not match');
      return; // Exit the method early
    }
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
