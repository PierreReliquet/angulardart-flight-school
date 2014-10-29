part of angulardart_flight_school_components;

@Component(
    selector: 'contact-edit',
    templateUrl: 'components/contact_edit/contact_edit.html'
)
class ContactEdit implements ScopeAware {
  Scope scope;
  Contacts contactsSvc;
  Contact contact;
  RouteProvider routeProvider;
 
  ContactEdit(this.contactsSvc, this.routeProvider) {
    contact = contactsSvc.contacts.where((c) => c.id == int.parse(routeProvider.parameters['id'])).first;
  } 
  
  void update() {
    contactsSvc.update(contact);
  }
}