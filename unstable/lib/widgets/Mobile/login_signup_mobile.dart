import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/widgets/title_widget.dart';
import 'package:unstable/providers/account_provider.dart';

class LoginSignupScreen extends ConsumerWidget {
  const LoginSignupScreen({super.key, required this.isLogin});

  final bool isLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void login() {
      ref.read(authProvider.notifier).login(
          'id'); // here we will put the id of the user so it is globally available
      Navigator.of(context).pop();
    }

    Widget nameInputField = const SizedBox(height: 0);

    if (!isLogin) {
      nameInputField = const TextField(
        decoration: InputDecoration(
          labelText: 'Name',
        ),
        style: TextStyle(color: Colors.white),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width =
              constraints.maxWidth < 600 ? constraints.maxWidth * 0.8 : 400;

          return Center(
            child: Column(
              children: [
                const TitleWidget(),
                const SizedBox(height: 30),
                Container(
                  width: width,
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
                        nameInputField,
                        const SizedBox(height: 20),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 170, // Set the desired width here
                          height: 45,
                          child: ElevatedButton(
                            onPressed: login,
                            style: btnStyle,
                            child: Text(
                              isLogin ? 'Log in' : 'Sign Up',
                              style: const TextStyle(color: Colors.white),
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
          );
        },
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
