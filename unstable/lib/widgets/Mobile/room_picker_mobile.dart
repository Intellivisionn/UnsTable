// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/widgets/drop_down_menu.dart';

class RoomPickerMobile extends StatelessWidget {
  const RoomPickerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Table Availability",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textColor,
                      height: 1.5),
                ),
              ),
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: CustomColor.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(10.0),
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
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                          SizedBox(width: 50),
                          Text(
                            '10 Available',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Room 109',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                          SizedBox(width: 50),
                          Text(
                            '1 Available',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Room 109',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                          SizedBox(width: 50),
                          Text(
                            '1 Available',
                            style: TextStyle(
                              fontSize: 16,
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
