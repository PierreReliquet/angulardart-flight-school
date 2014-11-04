part of angulardart_flight_school_components;

@Component(
    selector: 'contact-short-list',
    templateUrl: 'components/contact_shortlist/contact_shortlist.html',
    useShadowDom: false // we are not using the shadow dom here to be able to display the difference between shadow dom and not
)
class ContactShortList {
  Contacts contactsSvc;
  String search = "";
  List<Contact> contacts;
 
  ContactShortList(this.contactsSvc) {
    contacts = contactsSvc.contacts;
  } 
}