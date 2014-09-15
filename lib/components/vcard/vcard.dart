part of angulardart_flight_school_components;

/**
 * A VCard component which takes as entry a contact and display it in a standardized way.
 */
@Component(
    selector: 'vcard',
    templateUrl: 'packages/angulardart_flight_school/components/vcard/vcard_component.html',
    cssUrl: 'packages/angulardart_flight_school/components/vcard/vcard_component.css',
    publishAs: 'vcard'
)
class VCard {
  // The NgTwoWay annotation is deprecated but the replacement is
  // not yet implemented so we need to use this annotation
  @NgTwoWay('contact')
  Contact contact;
}