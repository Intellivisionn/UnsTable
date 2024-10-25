import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/widgets/title_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _authenticate() async {
    final supabase = Supabase.instance.client;
    try {
      await supabase.auth.signInWithPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successful!')),
      );
    } catch (e) {
      /// For debug purposes
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const TitleWidget(),
            const SizedBox(height: 30),
            Container(
              width: 300,
              decoration: const BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 40),
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: _authenticate,
                        style: btnStyle,
                        child: const Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var btnStyle = ElevatedButton.styleFrom(
  backgroundColor: CustomColor.accentColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(6),
  ),
);

