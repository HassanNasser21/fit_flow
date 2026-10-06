import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isCompact = constraints.maxHeight < 720;
            final imageHeight = isCompact
                ? constraints.maxHeight * 0.43
                : constraints.maxHeight * 0.49;

            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20, isCompact ? 12 : 24, 20, 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 44,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const _OnboardingHeader(),
                    SizedBox(height: isCompact ? 22 : 32),
                    _OnboardingHero(height: imageHeight),
                    SizedBox(height: isCompact ? 24 : 32),
                    Text(
                      'Train smarter.\nFeel stronger.',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: const Color(0xFF111827),
                        fontSize: isCompact ? 32 : 38,
                        fontWeight: FontWeight.w800,
                        height: 1.08,
                        letterSpacing: -1,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Your personal fitness journey starts here.',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: const Color(0xFF6B7280),
                        fontSize: 16,
                        height: 1.45,
                      ),
                    ),
                    SizedBox(height: isCompact ? 24 : 32),
                    SizedBox(
                      height: 56,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFF2563EB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        child: const Text('Get started'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFF4B5563),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      child: const Text('I already have an account'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _OnboardingHeader extends StatelessWidget {
  const _OnboardingHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/app_logo.svg', width: 34, height: 34),
        const SizedBox(width: 10),
        const Text(
          'FitFlow',
          style: TextStyle(
            color: Color(0xFF111827),
            fontSize: 22,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          tooltip: 'More options',
          icon: const Icon(Icons.more_horiz_rounded),
          color: const Color(0xFF6B7280),
        ),
      ],
    );
  }
}

class _OnboardingHero extends StatelessWidget {
  const _OnboardingHero({required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/onboarding_image.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Image.asset(
              'assets/images/onboarding_image_gradint.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
