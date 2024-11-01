import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class ClockedinMobile extends StatelessWidget {
  final Function(String) onSelectPage;

  const ClockedinMobile({super.key, required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var screenWidth = constraints.maxWidth;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height / 1.2,
          constraints: BoxConstraints(minHeight: 350.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidth * 0.9,
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
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            onSelectPage('1');
                          },
                          style: btnStyle,
                          child: const Text(
                            'Clock Out',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
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
                  width: screenWidth * 0.8,
                  height: 150,
                  decoration: BoxDecoration(
                    color: CustomColor.cardColor,
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
                  width: screenWidth * 0.8,
                  height: 150,
                  decoration: BoxDecoration(
                    color: CustomColor.cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.all(10.0),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

var btnStyle = ElevatedButton.styleFrom(
  backgroundColor: CustomColor.accentColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(6),
  ),
);
