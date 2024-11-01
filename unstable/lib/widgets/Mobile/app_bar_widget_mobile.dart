import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/widgets/site_logo.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarWidget({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.fromLTRB(40, 7, 20, 7),
        child: Container(
          height: 80.0,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}

var HeadderDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [Colors.transparent, CustomColor.accentColor],
  ),
  borderRadius: BorderRadius.circular(50),
);
