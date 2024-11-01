// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/widgets/drop_down_menu.dart';

class RoomPickerMobile extends StatelessWidget {
  const RoomPickerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.025),
                  child: Text(
                    "Table Availability",
                    style: TextStyle(
                        fontSize: screenWidth * 0.1,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.textColor,
                        height: 1.5),
                  ),
                ),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: CustomColor.cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(screenWidth * 0.025),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Room 101',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.textColor,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.1),
                            Text(
                              '10 Available',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.textColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Room 109',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.textColor,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.1),
                            Text(
                              '1 Available',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.textColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Room 109',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.textColor,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.1),
                            Text(
                              '1 Available',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.textColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
