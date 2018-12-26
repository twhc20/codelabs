// Basic Flutter widget test. Learn more at https://flutter.io/docs/testing.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:startup_namer/main.dart';

void main() {
  testWidgets('Codelab smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(new MyApp());

    final textWidgets = tester.widgetList<Text>(find.byType(Text));
    expect(textWidgets.length, 2);

    expect(textWidgets.last.data, 'Welcome to Flutter');

    final wordPairRegExp = RegExp(r'^[A-Z]\w*[A-Z]\w*$');
    final isWordPair = predicate((s) => wordPairRegExp.hasMatch(s));
    expect(textWidgets.first.data, isWordPair);
  });
}
