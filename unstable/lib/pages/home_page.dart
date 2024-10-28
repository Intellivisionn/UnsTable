

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:unstable/constants/colors.dart';
// import 'package:unstable/constants/nav_items.dart';
// import 'package:unstable/constants/size.dart';
// import 'package:unstable/widgets/Desktop/headder_desktop.dart';
// import 'package:unstable/widgets/Desktop/main_desktop.dart';
// import 'package:unstable/widgets/Mobile/clockedin_mobile.dart';
// import 'package:unstable/widgets/Mobile/drawer_mobile.dart';
// import 'package:unstable/widgets/Mobile/headder_mobile.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final ScaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, Constraints) {
//       return Scaffold(
//         key: ScaffoldKey,
//         backgroundColor: CustomColor.scaffoldBg,
//         endDrawer: Constraints.maxWidth >= kMinDesktopWidth
//             ? null
//             : const DrawerMobile(),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             // Main Container
//             if (Constraints.maxWidth >= kMinDesktopWidth)
//               const HeadderDesktop()
//             else
//               HeadderMobile(
//                 onMenuTap: () {
//                   ScaffoldKey.currentState?.openEndDrawer();
//                 },
//                 onLogoTap: () {},
//                 padding: EdgeInsets.zero,
//               ),
//             ClockedinMobile(),
//             //Info Container
//             Container(
//               height: 500,
//               width: double.maxFinite,
//             ),

//             //Contact Container
//             Container(
//               height: 500,
//               width: double.maxFinite,
//               color: Colors.blueGrey,
//             ),

//             //Footer Container
//             Container(
//               height: 500,
//               width: double.maxFinite,
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }
