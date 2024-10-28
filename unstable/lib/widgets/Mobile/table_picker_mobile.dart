// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/widgets/drop_down_menu.dart';

class TablePickerMobile extends StatelessWidget {
  const TablePickerMobile({super.key});

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
                  "Available Tables",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.textColor,
                      height: 1.5),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Room 101",
                  style: TextStyle(
                      fontSize: 28,
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
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Table 101',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                          Text(
                            'Available from 15.40',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Table 109',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                          Text(
                            'Available',
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Table 102',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColor.textColor,
                            ),
                          ),
                          Text(
                            'Available from 16.00',
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
