part of angulardart_flight_school_components;

@Component(
    selector: 'contact-view',
    templateUrl: 'components/contact_view/contact_view.html'
)
class ContactView implements ScopeAware {
  Scope scope;
  Contacts contactsSvc;
  Contact contact;
  RouteProvider routeProvider;
 
  ContactView(this.contactsSvc, this.routeProvider) {
    contact = contactsSvc.contacts.where((c) => c.id == int.parse(routeProvider.parameters['id'])).first;
  } 
}