import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:greeting/helloworldapp.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    var byKeyValue = find.byKey(ValueKey('value'));
    Text text = tester.firstWidget(byKeyValue) as Text;
    expect(find.text('Hello World!'), findsOneWidget);
  });
}
