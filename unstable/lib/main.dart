import 'package:flutter/material.dart';
import 'package:unstable/constants/constants.dart';
import 'package:unstable/pages/login_screen.dart';
import 'package:unstable/pages/welcome_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Constants.supabaseUrl,
    anonKey: Constants.supabaseAnnonKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Unstable',
      home: WelcomeScreen(),
    );
  }
  
   // Check if the user is already logged in
  Widget _checkSession() {
    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      // If a session exists, navigate to the home screen
      return const WelcomeScreen();
    } else {
      // No session found, navigate to login/signup
      return const LoginScreen();
    }
  }
}
