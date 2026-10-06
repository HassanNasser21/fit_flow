import 'package:fit_flow/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SplashTagline extends StatelessWidget {
  const SplashTagline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Elevate Your Movement'.toUpperCase(),
      textAlign: TextAlign.center,
      style: AppTextStyles.font14Light,
    );
  }
}
