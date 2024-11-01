import 'package:flutter/material.dart';
import 'package:unstable/widgets/Mobile/app_bar_widget_mobile.dart';
import 'package:unstable/widgets/Mobile/drawer_mobile.dart';
import 'package:unstable/widgets/Mobile/clockedin_mobile.dart';
import 'package:unstable/widgets/Mobile/main_mobile.dart';
import 'package:unstable/widgets/Mobile/myTables_mobile.dart';
import 'package:unstable/widgets/Mobile/preferences_mobile.dart';
import 'package:unstable/widgets/Mobile/room_picker_mobile.dart';
import 'package:unstable/widgets/Mobile/table_picker_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var selectedPage = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: NewDrawer(onSelectScreen: (identifier) {
        setState(() {
          selectedPage = identifier;
        });
      }),
      appBar: AppBarWidget(scaffoldKey: scaffoldKey),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return ListView(
              children: [
                if (selectedPage == '1')
                  MainMobile(onSelectPage: (identifier) {
                    setState(() {
                      selectedPage = identifier;
                    });
                  }),
                if (selectedPage == '2') const MyTablesMobile(),
                if (selectedPage == '3')
                  ClockedinMobile(onSelectPage: (identifier) {
                    setState(() {
                      selectedPage = identifier;
                    });
                  }),
                if (selectedPage == '4') const TablePickerMobile(),
                if (selectedPage == '5') const RoomPickerMobile(),
                if (selectedPage == '6') const PreferencesMobile(),
              ],
            );
          } else {
            // Tablet/Desktop layout
            return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: NewDrawer(onSelectScreen: (identifier) {
                    setState(() {
                      selectedPage = identifier;
                    });
                  }),
                ),
                Expanded(
                  flex: 3,
                  child: ListView(
                    children: [
                      if (selectedPage == '1')
                        MainMobile(onSelectPage: (identifier) {
                          setState(() {
                            selectedPage = identifier;
                          });
                        }),
                      if (selectedPage == '2') const MyTablesMobile(),
                      if (selectedPage == '3')
                        ClockedinMobile(onSelectPage: (identifier) {
                          setState(() {
                            selectedPage = identifier;
                          });
                        }),
                      if (selectedPage == '4') const TablePickerMobile(),
                      if (selectedPage == '5') const RoomPickerMobile(),
                      if (selectedPage == '6') const PreferencesMobile(),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
