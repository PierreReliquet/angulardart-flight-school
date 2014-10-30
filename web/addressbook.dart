library addressbook;
import 'package:angular/application_factory.dart';
import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/services.dart';

main() {
  main() {
    applicationFactory()
        ..addModule(
          new Module() // Creating an inline module based on method cascade
            ..bind(Contacts) // Registering our Contacts service to have it available through DI
          )
        ..run();
  }
}