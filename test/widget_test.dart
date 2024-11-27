import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../lib/main.dart';

void main() {
  group('FunctionCalculator Tests', () {
    test('calculate() returns correct value for valid input', () {
      final calculator = FunctionCalculator();
      expect(calculator.calculate(2), 4); // 16 / (2 * 2) = 4
    });

    test('calculate() throws ArgumentError when x is zero', () {
      final calculator = FunctionCalculator();
      expect(() => calculator.calculate(0), throwsArgumentError);
    });
  });

  testWidgets('App bar contains correct title', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text("IPZ-33: Alina's last Flutter App"), findsOneWidget);
  });

  testWidgets('FloatingActionButton has correct icon', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byIcon(Icons.person), findsOneWidget);
  });

  testWidgets('Counter increments by 2', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Initial state
    expect(find.text('0'), findsOneWidget);

    // Tap the FloatingActionButton
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Counter should increment by 2
    expect(find.text('2'), findsOneWidget);
  });
}




