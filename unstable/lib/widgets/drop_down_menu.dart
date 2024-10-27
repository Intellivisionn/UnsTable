import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String? _selectedValue = '12:00 PM';
  final List<String> _options = [
    '12:00 PM',
    '12:30 PM',
    '1:00 PM',
    '1:30 PM',
    '2:00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: DropdownButton<String>(
        value: _selectedValue,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: CustomColor
              .textColor, // Replace CustomColor.textColor with Colors.black or your custom color
        ),
        underline: Container(
          height: 2,
          color: Colors
              .blue, // Replace CustomColor.accentColor with Colors.blue or your custom color
        ),
        onChanged: (String? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
        },
        items: _options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
