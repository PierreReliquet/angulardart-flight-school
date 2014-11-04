part of angulardart_flight_school_components;

@Component(
    selector: 'contact-edit',
    templateUrl: 'components/contact_edit/contact_edit.html'
)
class ContactEdit extends AbstractContact {
  
  ContactEdit(Contacts contactsSvc, RouteProvider routeProvider, Router router) : super(contactsSvc, routeProvider, router);
  
  void update() {
    _contactsSvc.update(contact);
    _router.go('contact.view', {'id': contact.id});
  }
}