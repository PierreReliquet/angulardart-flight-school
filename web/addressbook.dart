library addressbook;
import 'package:angular/application_factory.dart';
import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/services.dart';
import 'package:angulardart_flight_school/components.dart';
import 'package:angulardart_flight_school/decorators.dart';
import 'package:angulardart_flight_school/formatters.dart';
import 'package:angulardart_flight_school/routing.dart';

main() {
  applicationFactory()
      ..addModule(
        new Module()
          ..bind(Contacts)
          ..bind(VCard)
          ..bind(VCardList)
          ..bind(ContactEdit)
          ..bind(ContactView)
          ..bind(ContactShortList)
          ..bind(Tooltip)
          ..bind(SearchFilter)
          ..bind(RouteInitializerFn, toValue: addressBookRouter)
          // Required otherwise angulardart does not know how to interprete the route
          ..bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false))
        )
      ..run();
}