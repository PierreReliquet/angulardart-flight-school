part of angulardart_flight_school_services;

@Injectable()
class Contacts {
  static final List<Contact> _initialContacts = [ new Contact(0, "Wayne", "Bruce", "Gotham city","555-BATMAN" ),
                                                  new Contact(1, "Parker", "Peter", "New York","555-SPDRMN" ),
                                                  new Contact(2, "Storm", "Jane", "Baxter building, New York","555-INVGRL" ),
                                                  new Contact(3, "Richards", "Red", "Baxter building, New York","555-MRFANT" ),
                                                  new Contact(4, "Storm", "Johnny", "Baxter building, New York","555-TORCH" ),
                                                  new Contact(5, "Grimm", "Benjamin", "Baxter building, New York","555-THING" ),
                                                  new Contact(6, "Murdock", "Matt", "San Francisco","555-DARDVL" ),
                                                  new Contact(7, "Stark", "Tony", "Stark tower, New York","555-IRNMAN" )];
  List<Contact> _contacts = [];
  
  // Sample getter to illustrate the cool dart syntax for getters 
  List<Contact> get contacts => _contacts;
  
  Contacts() {
    String stored = window.localStorage['contacts'];
    if (stored == null) {
      _contacts = _initialContacts;
      return;
    }
    
    _contacts = JSON.decode(stored).map((map) => new Contact.fromMap(map)).toList();
  }
  
  Contact create() {
    return new Contact.create(_contacts.length);
  }
  
  void update(Contact c) {
    var contact = _contacts.where((Contact c1) => c.id == c1.id).first;
    contact.firstName = c.firstName;
    contact.lastName = c.lastName;
    contact.phone = c.phone;
    contact.address = c.address;
    _commit();
  }
  
  void save(Contact contact) {
    _contacts.add(contact);
    _commit();
  }
  
  _commit() {
    window.localStorage['contacts'] = JSON.encode(_contacts, toEncodable: Contact.toJson);
  }
}