import 'package:deebup_emp/apis/dashboard.dart';
import 'package:deebup_emp/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString("token"),));
}

class MyApp extends StatelessWidget {
  final token;
  const MyApp({required this.token, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deebug Emp',
      home: (JwtDecoder.isExpired(token) == false)?Dashboard(token: token):const SignIn(),
    );
  }
}
