import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/pages/welcome_screen.dart';
import 'package:unstable/widgets/Mobile/clockedin_mobile.dart';
import 'package:unstable/widgets/Mobile/headder_mobile.dart';
import 'package:unstable/widgets/Mobile/main_mobile.dart';
import 'package:unstable/widgets/Mobile/myTables_mobile.dart';
import 'package:unstable/widgets/Mobile/new_drawer.dart';
import 'package:unstable/widgets/Mobile/preferences_mobile.dart';
import 'package:unstable/widgets/Mobile/room_picker_mobile.dart';
import 'package:unstable/widgets/Mobile/table_picker_mobile.dart';
import 'package:unstable/widgets/site_logo.dart';

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
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(80.0), // Set the desired height here
        child: AppBar(
          leading: Container(),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(40, 7, 20, 7), // Add margin here
            child: Container(
              height: 80.0, // Match the height of the AppBar
              decoration: HeadderDecoration,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                    color: CustomColor.textColor,
                  ),
                  const Spacer(),
                  SiteLogoMobile(
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          if (selectedPage == '1') MainMobile(),
          if (selectedPage == '2') MyTablesMobile(),
          if (selectedPage == '3') ClockedinMobile(),
          if (selectedPage == '4') WelcomeScreen(),
          if (selectedPage == '5') TablePickerMobile(),
          if (selectedPage == '6') RoomPickerMobile(),
          if (selectedPage == '7') PreferencesMobile(),
        ],
      ),
    );
  }
}

var HeadderDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [Colors.transparent, CustomColor.accentColor],
  ),
  borderRadius: BorderRadius.circular(50),
);
