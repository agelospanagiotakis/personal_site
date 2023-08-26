import 'package:flutter/material.dart';
import 'package:personal_site/app/core/injections/injections.dart';
import 'package:personal_site/data/models/models.dart';
import 'package:personal_site/data/repositories/contact/contact.dart';

class ContactController extends ChangeNotifier {
  ContactController({
    ContactRepositoryImpl? contactRepository,
  }) : _contactRepository = contactRepository ?? getIt();

  final ContactRepositoryImpl _contactRepository;

  Future<void> sendMail({
    required Contact contact,
  }) {
    return _contactRepository.sendMail(
      contact: contact,
    );
  }
}
