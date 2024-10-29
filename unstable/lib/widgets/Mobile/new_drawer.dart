import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/providers/account_provider.dart';

class NewDrawer extends ConsumerWidget {
  const NewDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authNotifier = ref.read(authProvider.notifier);
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
          const Divider(),
          ListTile(
            title: const Text('Log out'),
            onTap: () {
              _authNotifier.logout();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
