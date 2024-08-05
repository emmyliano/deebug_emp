import 'package:deebup_emp/apis/config.dart';
import 'package:deebup_emp/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  final TextEditingController _otpController = TextEditingController();

  void _pushWhenVerified() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignIn()));
  }

  Future<void> verifyOtp(String otp) async {
    if (otp.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter OTP');
      return;
    }

    try {
      final response = await http.post(
        Uri.parse(verify),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'otp': otp}),
      );

      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        if (decodedResponse['status'] == 'OTP verified successfully') {
          Fluttertoast.showToast(msg: 'OTP verified successfully');
          _pushWhenVerified();
        } else {
          Fluttertoast.showToast(msg: decodedResponse['status']);
        }
      } else {
        Fluttertoast.showToast(msg: 'Server error: ${response.statusCode}');
      }
    } catch (error) {
      Fluttertoast.showToast(msg: 'Oops, an error occurred');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter OTP',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                verifyOtp(_otpController.text);
              },
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
