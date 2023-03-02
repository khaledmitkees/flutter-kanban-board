import 'package:flutter/material.dart';
import 'package:flutter_kanban_board/Widgets/textfields/custom_textfield.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomTextField', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      final hintText = 'Enter some text';
      final onChanged = (String value) {};

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CustomTextField(
            width: 100,
            height: 100,
            hintText: hintText,
            onChanged: onChanged,
          ),
        ),
      ));

      final textFieldFinder = find.byType(TextField);
      final hintTextFinder = find.text(hintText);

      expect(textFieldFinder, findsOneWidget);
      expect(hintTextFinder, findsOneWidget);
    });

    testWidgets('calls onChanged callback when text is changed',
        (WidgetTester tester) async {
      var value = '';
      final onChanged = (String newValue) {
        value = newValue;
      };

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CustomTextField(
            width: 100,
            height: 100,
            hintText: 'Enter some text',
            onChanged: onChanged,
          ),
        ),
      ));

      await tester.enterText(find.byType(TextField), 'Hello');

      expect(value, 'Hello');
    });
  });
}
