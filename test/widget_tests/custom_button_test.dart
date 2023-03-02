import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/Widgets/buttons/custom_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomButton should display text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CustomRoundedButton(
          text: 'Test Button',
          onPressed: () {},
        ),
      ),
    );

    expect(find.text('Test Button'), findsOneWidget);
  });

  testWidgets('CustomButton should respond to tap',
      (WidgetTester tester) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: CustomRoundedButton(
          text: 'Test Button',
          onPressed: () {
            tapped = true;
          },
        ),
      ),
    );

    await tester.tap(find.byType(CustomRoundedButton));
    expect(tapped, true);
  });
}
