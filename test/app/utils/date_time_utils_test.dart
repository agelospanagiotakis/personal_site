import 'package:flutter_test/flutter_test.dart';
import 'package:personal_site/app/utils/utils.dart';

void main() {
  test('DateTimeUtils get year', () {
    var date = DateTimeUtils.getYear(DateTime(2003));
    expect(date, isNotNull);
  });
}
