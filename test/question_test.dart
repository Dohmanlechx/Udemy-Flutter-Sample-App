import 'package:flutter_test/flutter_test.dart';
import 'package:udemy_course_1/question.dart';

void main() {
  test('Question instance', () {
    final q1 = Question("12345?");
    expect(q1.questionText, "12345?");
  });
}
