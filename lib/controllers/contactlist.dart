part of angulardart_flight_school_controllers;

@Controller(selector: '[contact-list]', publishAs: 'contactList')
class ContactList {
  Contacts contactsSvc;
  List<Contact> contacts;
  
  ContactList(this.contactsSvc) {
    contacts = contactsSvc.contacts;
  }
}