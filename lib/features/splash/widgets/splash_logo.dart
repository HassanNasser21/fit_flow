import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 128,
      height: 128,
      child: Center(
        child: SvgPicture.asset(
          'assets/images/app_logo.svg',
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}
