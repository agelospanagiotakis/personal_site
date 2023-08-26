import 'package:flutter_test/flutter_test.dart';
import 'package:personal_site/app/utils/utils.dart';

void main() {
  test('ContactValidators methods', () {
    var name = ContactValidators.name('agelos');
    expect(() => name, isNotNull);

    var email = ContactValidators.email('fakeemail@gmail.com');
    expect(() => email, isNotNull);

    var message = ContactValidators.message('Hello, World!');
    expect(() => message, isNotNull);

    var subject = ContactValidators.subject('Hello, World!');
    expect(() => subject, isNotNull);
  });
}
