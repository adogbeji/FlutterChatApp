import 'package:chat_app/controllers/services/auth_service.dart';
import 'package:get_it/get_it.dart';

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;  // Stores get_it package

  getIt.registerSingleton<AuthService>(AuthService());  // Register instance opf AuthService class
}