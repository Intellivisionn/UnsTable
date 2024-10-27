import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "We are\nUnsTable",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textColor,
                      height: 1.5),
                ),
              ),
              SizedBox(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 25),
                          minimumSize: Size(150, 60)),
                      child: const Text("Get Started")),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/table.webp",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
