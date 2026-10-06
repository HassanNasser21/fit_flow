import 'package:fit_flow/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'FitFlow',
      textAlign: TextAlign.center,
      style: AppTextStyles.font48Bold,
    );
  }
}
