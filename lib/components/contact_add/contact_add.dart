part of angulardart_flight_school_components;

@Component(
    selector: 'contact-add',
    templateUrl: 'components/contact_add/contact_add.html'
)
class ContactAdd {
  Contacts _contactsSvc;
  Router _router;
  Contact contact;

  ContactAdd(this._contactsSvc, this._router) {
    contact = _contactsSvc.create();
  }
  
  save() {
    _contactsSvc.save(contact);
    _router.go('contact.view', {'id': contact.id});
  }
}