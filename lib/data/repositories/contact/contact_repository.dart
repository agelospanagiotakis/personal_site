import 'package:personal_site/data/models/models.dart';

abstract class ContactRepository {
  Future sendMail({required Contact contact});
}
