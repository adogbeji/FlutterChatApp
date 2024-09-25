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
        child: Text('Login Screen'),
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