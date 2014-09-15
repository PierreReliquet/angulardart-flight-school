part of angulardart_flight_school_controllers;

@Controller(
    selector: '[contact-edit]',
    publishAs: 'contactEdit'
)
class ContactEdit {
  Contact contact;
  RouteProvider routeProvider;
  Contacts contactsSvc;
  
  
  ContactEdit(this.contactsSvc, this.routeProvider) {
    contact = contactsSvc.contacts.where((c) => c.id == int.parse(routeProvider.parameters['id'])).first;
  }

  void update() {
    // TODO some real code could be written here by the developer to test the utility functions on collections
    print('updated');
  }
}
