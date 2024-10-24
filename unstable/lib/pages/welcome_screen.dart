import 'package:flutter/material.dart';

import 'package:unstable/constants/colors.dart';
import 'package:unstable/pages/login_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('Welcome to',
              style: TextStyle(
                fontSize: 34,
                 fontStyle: FontStyle.italic,
                ),
            ),

            const Text('UnsTable',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 50),

            SizedBox(
              width: 170, // Set the desired width here
              height: 45, 
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginSignupScreen(isLogin: true)));
                  },
                  style: btnStyle,
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
                  
                ),
              ),

            const SizedBox(height: 20),

            SizedBox(
              width: 170, // Set the desired width here
              height: 45, 
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginSignupScreen(isLogin: false)));
                  },
                  style: btnStyle,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
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