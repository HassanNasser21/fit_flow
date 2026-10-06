import 'dart:async';

import 'package:fit_flow/core/router/app_routes.dart';
import 'package:fit_flow/core/theme/colors.dart';
import 'package:fit_flow/features/splash/widgets/splash_logo.dart';
import 'package:fit_flow/features/splash/widgets/splash_tagline.dart';
import 'package:fit_flow/features/splash/widgets/splash_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.go(AppRoutes.onboarding);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: const Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SplashLogo(),
              SizedBox(height: 24),
              SplashTitle(),
              SizedBox(height: 8),
              SplashTagline(),
            ],
          ),
        ),
      ),
    );
  }
}
