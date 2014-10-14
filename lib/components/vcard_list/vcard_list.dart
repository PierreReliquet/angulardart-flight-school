part of angulardart_flight_school_components;

@Component(
    selector: 'vcard-list',
    templateUrl: 'components/vcard_list/vcard_list.html'
)
class VCardList implements ScopeAware {
  Scope scope;
  Contacts contactsSvc;
  List<Contact> contacts;
 
  VCardList(this.contactsSvc) {
    contacts = contactsSvc.contacts;
  }
}