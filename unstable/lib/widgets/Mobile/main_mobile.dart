import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class MainMobile extends StatelessWidget {
  final Function(String) onSelectPage;

  const MainMobile({super.key, required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var screenWidth = constraints.maxWidth;
        var isSmallScreen = screenWidth < 600;

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height / 1.2,
          constraints: const BoxConstraints(minHeight: 350.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: isSmallScreen ? screenWidth * 0.8 : 285,
                  height: 85,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        onSelectPage(
                            '2'); // Change to the page identifier for MyTablesMobile
                      },
                      style: btnStyle,
                      child: const Text(
                        'Clock In',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen ? screenWidth * 0.8 : 285,
                  height: 85,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: btnStyle,
                      child: const Text(
                        'Scan QR',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Minutes spent standing",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.textColor,
                        height: 1.5),
                  ),
                ),
                Container(
                  width: isSmallScreen ? screenWidth * 0.9 : 300,
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
                    "Work Time",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.textColor,
                        height: 1.5),
                  ),
                ),
                Container(
                  width: isSmallScreen ? screenWidth * 0.9 : 300,
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
