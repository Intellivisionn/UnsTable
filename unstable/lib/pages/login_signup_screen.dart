import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class LoginSignupScreen extends StatelessWidget{
  const LoginSignupScreen({super.key, required this.isLogin});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {

    Widget name = const SizedBox(height: 0,); 

  if(!isLogin){
    name = const TextField(
      decoration: const InputDecoration(
        hintText: 'Name',
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Container(
        width: 300,
        decoration: const BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 40),

            name,

            SizedBox(
              width: 170, // Set the desired width here
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
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
  );
}
}

var btnStyle = ElevatedButton.styleFrom(
                backgroundColor: CustomColor.accentColor,
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    ),
              );