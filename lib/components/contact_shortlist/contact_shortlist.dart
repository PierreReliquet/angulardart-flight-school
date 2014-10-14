part of angulardart_flight_school_components;

@Component(
    selector: 'contact-short-list',
    templateUrl: 'components/contact_shortlist/contact_shortlist.html',
    useNgBaseCss: true
)
class ContactShortList implements ScopeAware {
  Scope scope;
  Contacts contactsSvc;
  String search = "";
  List<Contact> contacts;
 
  ContactShortList(this.contactsSvc) {
    contacts = contactsSvc.contacts;
  } 
}