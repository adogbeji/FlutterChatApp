import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hi, Welcome Back!', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),

            Text('Hello again, you\'ve been missed', style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),),
          ],
        ),
      ),
    );
  }

  Widget _buildUI() {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}