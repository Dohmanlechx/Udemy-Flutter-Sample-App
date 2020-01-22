import 'package:flutter_test/flutter_test.dart';
import 'package:udemy_course_1/main.dart';

void main() {
  testWidgets('Buttons test', (WidgetTester mainWidget) async {
    final realFirstQuestion = "What's your fav color?";
    final realSecondQuestion = "What's your fav animal?";

    await mainWidget.pumpWidget(MyApp());

    expect(find.text(realFirstQuestion), findsOneWidget);
    expect(find.text(realSecondQuestion), findsNothing);

    await mainWidget.tap(find.text("Answer 1"));
    await mainWidget.pump();

    expect(find.text(realFirstQuestion), findsNothing);
    expect(find.text(realSecondQuestion), findsOneWidget);
  });
}