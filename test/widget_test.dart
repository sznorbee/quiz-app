// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  testWidgets('Quiz app test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: Gradientcontainer(Color.fromARGB(255, 227, 162, 9),
            Color.fromARGB(255, 176, 255, 179)),
      ),
    ));

    // Verify that a grandient is used as background.
    expect(find.byType(Gradientcontainer), findsOneWidget);

    // Verify that an image is displayed.
    expect(find.byType(Image), findsOneWidget);

    // Verify that a text is displayed.
    expect(find.text('Learn Flutter the Fun Way!'), findsOneWidget);

    // Verify that a button is displayed.
    expect(find.byType(OutlinedButton), findsOneWidget);
  });
}
