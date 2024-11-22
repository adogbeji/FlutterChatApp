import 'package:chat_app/controllers/services/auth_service.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/consts.dart';
import 'package:chat_app/views/widgets/custom_form_field.dart';
import 'package:get_it/get_it.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();  // Form Key
  final GetIt _getIt = GetIt.instance;  // Stores get_it package
  late AuthService _authService; 

  String? email, password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _authService = _getIt.get<AuthService>();  // Gets access to AuthService class
  }

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
                CustomFormField(
                  labelText: 'Email',
                  hintText: 'Enter Email...',
                  validationRegEx: EMAIL_VALIDATION_REGEX,
                  onSaved: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),

                const SizedBox(height: 8,),

                // PASSWORD INPUT FIELD
                CustomFormField(
                  labelText: 'Password',
                  hintText: 'Enter Password...',
                  validationRegEx: PASSWORD_VALIDATION_REGEX,
                  obscureText: true,
                  onSaved: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),

                const SizedBox(height: 8,),

                // LOGIN BUTTON
                InkWell(
                  onTap: () async {
                    if (_loginFormKey.currentState?.validate() ?? false) {
                      _loginFormKey.currentState?.save();
                      // print(email);
                      // print(password);

                      bool result = await _authService.login(email!, password!);
                      print(result);
                      if (result) {
                      } else {}
                    }
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
}
