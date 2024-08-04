import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final String token;
  const Homepage({required this.token, super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              "Welcome"
            ),
          )
        ],
      ),
    );
  }
}