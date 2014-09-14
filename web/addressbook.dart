library addressbook;
import 'package:angular/application_factory.dart';
import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/controllers.dart';
import 'package:angulardart_flight_school/services.dart';

main() {
  applicationFactory()
      ..addModule(
        new Module()
          ..bind(ContactList)
          ..bind(Contacts)
        )
      ..run();
}