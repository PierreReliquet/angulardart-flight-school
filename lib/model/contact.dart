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

  Contact(this.id, this.lastName, this.firstName, this.address, this.phone);
  Contact.fromJson(String s) {
    Map m = JSON.decode(s);
    this.id = int.parse(m['id']);
    this.lastName = m['lastName'];
    this.firstName = m['firstName'];
    this.address = m['address'];
    this.phone =m['phone'];
  }
  
  Map toJson() {
    return {
      id: id,
      firstName: firstName,
      lastName: lastName,
      address: address,
      phone: phone
    };
  }
  
}
