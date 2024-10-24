import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';
import 'package:unstable/styles/style.dart';
import 'package:unstable/widgets/site_logo.dart';

class HeadderMobile extends StatelessWidget {
  const HeadderMobile(
      {super.key, this.onLogoTap, this.onMenuTap, required EdgeInsets padding});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 20, 20, 20),
      decoration: HeadderDecoration,
      child: Row(
        children: [
          SiteLogoMobile(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
            color: CustomColor.textColor,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
