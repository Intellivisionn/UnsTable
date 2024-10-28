import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class NewDrawer extends StatelessWidget {
  const NewDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          ListTile(
            title: const Text('Main'),
            onTap: () {
              onSelectScreen('1');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('My tables'),
            onTap: () {
              onSelectScreen('2');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Clocekd In'),
            onTap: () {
              onSelectScreen('3');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Table Picker'),
            onTap: () {
              onSelectScreen('4');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Room Picker'),
            onTap: () {
              onSelectScreen('5');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Preferences'),
            onTap: () {
              onSelectScreen('6');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
