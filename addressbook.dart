library addressbook;
import 'package:angular/application_factory_static.dart';
import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/services.dart';
import 'package:angulardart_flight_school/components.dart';
import 'package:angulardart_flight_school/decorators.dart';
import 'package:angulardart_flight_school/formatters.dart';
import 'package:angulardart_flight_school/routing.dart';
import 'addressbook_generated_type_factory_maps.dart' show setStaticReflectorAsDefault;
import 'addressbook_static_expressions.dart' as generated_static_expressions;
import 'addressbook_static_metadata.dart' as generated_static_metadata;
import 'addressbook_static_type_to_uri_mapper.dart' as generated_static_type_to_uri_mapper;

class AddressBook extends Module {
  AddressBook() {
    bind(Contacts);
    bind(VCard);
    bind(VCardList);
    bind(ContactEdit);
    bind(ContactAdd);
    bind(ContactView);
    bind(ContactShortList);
    bind(Tooltip);
    bind(SearchFilter);
    bind(RouteInitializerFn, toValue: addressBookRouter);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}

main() {
  setStaticReflectorAsDefault();
  staticApplicationFactory(generated_static_metadata.typeAnnotations, generated_static_expressions.getters, generated_static_expressions.setters, generated_static_expressions.symbols, generated_static_type_to_uri_mapper.typeToUriMapper)
      ..addModule(new AddressBook())
      ..run();
}