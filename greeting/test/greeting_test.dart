import 'package:greeting/greeting.dart';
import 'package:test/test.dart';

void main() {
  test('Hello World Salutation Test', () {
    expect(Greeting().salutation, 'Hello World!');
  });
}