library angulardart_flight_school_model;
import 'dart:convert';

/**
 * A contact class because AngularDart allows us to map the view with classes and not only json objects.
 */
class Contact {
  int id;
  String firstName;
  String lastName;
  String address;
  String phone;

  Contact.create(this.id) {
    this.firstName = "";
    this.lastName = "";
    this.address = "";
    this.phone = "";
  }
  
  Contact.fromMap(Map m):this(m['id'], m['lastName'], m['firstName'], m['address'], m['phone']);
  
  Contact(this.id, this.lastName, this.firstName, this.address, this.phone);
  
  static Map toJson(Contact c) {
    return {
      'id': c.id,
      'firstName': c.firstName,
      'lastName': c.lastName,
      'address': c.address,
      'phone': c.phone
    };
  }
}
