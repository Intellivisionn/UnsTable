import 'package:flutter/material.dart';
import 'package:unstable/constants/colors.dart';

class SiteLogoMobile extends StatelessWidget {
  const SiteLogoMobile({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "UnsTable",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: CustomColor.textColor,
        ),
      ),
    );
  }
}

class SiteLogoDesktop extends StatelessWidget {
  const SiteLogoDesktop({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: GestureDetector(
        onTap: onTap,
        child: const Text(
          "UnsTable",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: CustomColor.textColor,
          ),
        ),
      ),
    );
  }
}
