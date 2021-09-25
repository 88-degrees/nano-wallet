import 'package:event_taxi/event_taxi.dart';
import 'package:natrium_wallet/model/db/contact.dart';

class ContactModifiedEvent implements Event {
  final Contact contact;

  ContactModifiedEvent({this.contact});
}