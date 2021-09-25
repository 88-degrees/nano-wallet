import 'package:event_taxi/event_taxi.dart';
import 'package:natrium_wallet/model/db/contact.dart';

class ContactAddedEvent implements Event {
  final Contact contact;

  ContactAddedEvent({this.contact});
}