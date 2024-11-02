import 'package:chat_app/views/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();  // Form Key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Form(
            key: _loginFormKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Hi, Welcome Back!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  'Hello again, you\'ve been missed',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 22,),

                // EMAIL INPUT FIELD
                const CustomFormField(
                  labelText: 'Email',
                  hintText: 'Enter Email...',
                ),

                const SizedBox(height: 8,),

                // PASSWORD INPUT FIELD
                const CustomFormField(
                  labelText: 'Password',
                  hintText: 'Enter Password...',
                ),

                const SizedBox(height: 8,),

                // LOGIN BUTTON
                InkWell(
                  onTap: () {
                    if (_loginFormKey.currentState!.validate()) {}
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(6),),
                    ),
                    child: const Center(
                      child: Text('Log In'),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUI() {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
