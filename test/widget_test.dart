import 'package:fit_flow/features/onboarding/presentation/onboarding_view.dart';
import 'package:fit_flow/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpAll(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('Splash shows FitFlow branding', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('FitFlow'), findsOneWidget);
    expect(find.text('ELEVATE YOUR MOVEMENT'), findsOneWidget);
  });

  testWidgets('Splash navigates to onboarding after 2 seconds', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(find.byType(OnboardingView), findsOneWidget);
    expect(find.text('Train smarter.\nFeel stronger.'), findsOneWidget);
  });
}
