import 'package:flutter/material.dart';
import 'package:chat_app/views/screens/auth/login_screen.dart';

class NavigationService {
  late GlobalKey<NavigatorState> _navigatorKey;

  NavigationService() {
    _navigatorKey = GlobalKey();
  }

  final Map<String, Widget Function(BuildContext)> _routes = {
    '/login': (context) => const LoginScreen(),
  };

  GlobalKey<NavigatorState>? get navigatorKey {
    return _navigatorKey;
  }

  Map<String, Widget Function(BuildContext)> get routes {
    return _routes;
  }
}