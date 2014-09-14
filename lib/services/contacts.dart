part of angulardart_flight_school_services;

@Injectable()
class Contacts {
  List<Contact> _contacts = [ new Contact(0, "Wayne", "Bruce", "Gotham city","555-BATMAN" ),
                              new Contact(1, "Parker", "Peter", "New York","555-SPDRMN" ),
                              new Contact(2, "Storm", "Jane", "Baxter building, New York","555-INVGRL" ),
                              new Contact(3, "Richards", "Red", "Baxter building, New York","555-MRFANT" ),
                              new Contact(4, "Storm", "Johnny", "Baxter building, New York","555-TORCH" ),
                              new Contact(5, "Grimm", "Benjamin", "Baxter building, New York","555-THING" ),
                              new Contact(6, "Murdock", "Matt", "San Francisco","555-DARDVL" ),
                              new Contact(7, "Stark", "Tony", "Stark tower, New York","555-IRNMAN" )];
  
  // Sample getter to illustrate the cool dart syntax for getters 
  List<Contact> get contacts => _contacts;
}