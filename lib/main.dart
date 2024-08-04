import 'package:deebup_emp/home_screens/homepage.dart';
import 'package:deebup_emp/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString("token")));
}

class MyApp extends StatelessWidget {
  final String? token; // Allow token to be nullable
  const MyApp({required this.token, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isTokenValid = token != null && !JwtDecoder.isExpired(token!);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deebug Emp',
      home: isTokenValid ? Homepage(token: token!) : const SignIn(),
    );
  }
}
