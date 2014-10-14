part of angulardart_flight_school_components;

/**
 * A VCard component which takes as entry a contact and display it in a standardized way.
 */
@Component(
    selector: 'vcard',
    templateUrl: 'components/vcard/vcard_component.html',
    cssUrl: 'components/vcard/vcard_component.css',
    map: const {
      'contact': '<=>contact'
    }
)
class VCard implements ScopeAware {
  Scope scope;
  Contact contact;
}