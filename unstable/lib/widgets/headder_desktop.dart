import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/constants/nav_items.dart';
import 'package:unstable/styles/style.dart';
import 'package:unstable/widgets/site_logo.dart';

class HeadderDesktop extends StatelessWidget {
  const HeadderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.maxFinite,
      decoration: HeadderDecoration,
      child: Row(children: [
        // ignore: prefer_const_constructors
        SiteLogoDesktop(
          onTap: () {},
        ),
        const Spacer(),
        for (var i = 0; i < navItems.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                navItems[i],
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.textColor),
              ),
            ),
          ),
      ]),
    );
  }
}
