import 'package:fit_flow/core/router/app_routes.dart';
import 'package:fit_flow/features/onboarding/presentation/onboarding_view.dart';
import 'package:fit_flow/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      name: AppRouteNames.splash,
      path: AppRoutes.splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      name: AppRouteNames.onboarding,
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingView(),
    ),
  ],
);
