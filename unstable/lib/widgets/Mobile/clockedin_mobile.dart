import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class ClockedinMobile extends StatelessWidget {
  const ClockedinMobile({super.key});

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
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: CustomColor.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    '00:00:00', // Placeholder for the timer
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textColor,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 175,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: btnStyle,
                        child: const Text(
                          'Clock Out',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 175,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: btnStyle,
                        child: const Text(
                          'Break',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Session spent standing",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textColor,
                      height: 1.5),
                ),
              ),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: CustomColor
                      .cardColor, // You can change the color as needed
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10.0),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Break Time",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textColor,
                      height: 1.5),
                ),
              ),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: CustomColor
                      .cardColor, // You can change the color as needed
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10.0),
              )
            ],
          ),
        ],
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
