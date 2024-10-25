import 'package:flutter/material.dart';
import 'package:unstable/widgets/drawer_mobile.dart';
import 'package:unstable/widgets/headder_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const DrawerMobile(),
      body: HeadderMobile(
        padding: EdgeInsets.all(0),
        onMenuTap: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
        onLogoTap: null,
      ),
    );});
  }
}