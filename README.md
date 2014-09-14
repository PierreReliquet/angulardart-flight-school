This is a workshop developped for the AngularDart Flight School event in Nantes organized by the GDG.

The aim is to develop a sample of address book to show how powerful AngularDart is.

This workshop is divided in multiple steps, each step includes developments documented in this readme. If you have any trouble with 
one step, do not worry you can find the solution in the next step tag / branch. 

#Step 0 - A first Dart application

### Setting up the application to make it Darty 
The first thing we need to do is create the Dart file which is going to contains our main method 
required by Dart and include it in the index.html. In fact it is going to be required to add three scripts : 
```Html
<script src="packages/shadow_dom/shadow_dom.min.js"></script>
<script type="application/dart" src="addressbook.dart"></script>
<script src="packages/browser/dart.js"></script>
```
* Shadow_dom is going to be used later but it basically allow us to use a subset of webcomponents when using AngularDart @Component.
* addressbook.dart is our script containing the main function. /!\ WARNING, Dart authorizes only one Dart script to be added in 
the index.html since only one main method can be ran.
* dart.js actually bootstraps our application by checking if the Dart VM is available otherwise it tries to fallback to the JS version
(but this requires the Dart version to have been compiled to JS).

At this point it is required to add the missing libraries to the pubspec.yaml file (shadow_dom and browser libraries).

Now we need to create our addressbook.dart file in the web directory and finally to add the following code : 
```Dart
library addressbook;

main() {
  print('Hello world!');
}
```

Now, just right click on the index.html and hit "Run in Dartium" and you should see the application with static data. If you
look to your console (F12 for the Developer Tools) you should even see your "Hello World!".

# Step 1 - Bootstrapping and Simple binding

We now need to bootstrap AngularDart to start using it. As a reminder this is how we would have done it in JavaScript:
```Html
<html ng-app="NgContacts">
...
</html>
```
```JavaScript
angular.module('NgContacts', [])
``` 
Within AngularDart, this is quite different and we still have to declare the ng-app in the HTML head
```Html
<html ng-app>
...
</html>
```
The reader would notice that there is no module name in AngularDart. Then in our main method we just have to write down few lines : 
```Dart
main() {
	applicationFactory().run();
}
```
And this is it the application is *almost* bootstrapped. What must be done now is update the pubspec.yaml file to add the following lines
```YAML
transformers:
- angular
```
The reason why a transformer is added is that AngularDart at startup time is going to generate code to create the link between all 
the objects to provide the dependency injection.

Now we can run our application but for now we would not know if it is working so to check that we are going to add a simple binding. 
To do so, find in the index.html the following section : 
```HTML
<form class="form-search">
    <div class="input-prepend">
        <span class="add-on"><i class="icon-search"></i></span>
        <input type="text" class="input-medium">
    </div>
</form> 
```
And on the input add a ng-model="search" to bind the user's input in the search variable. Then below the form tag, just add a simple
Angular binding like that : 
```HTML
<div ng-show="search">You searched : {{search}}</div>
```
And we're set, now you can just right click on your index.html and hit run in Dartium. 

*NB : for folks running under linux Dartium might tells you that your are missing libudev.so.0 in that case refer to [this issue](https://code.google.com/p/dart/issues/detail?id=12325) 
which indicates how to correct that problem by creating a symbolic link.* 

# Step 2 - The first controller let's get dynamic
In this part we are going to enjoy the strength of Dart and create our first type to have a real structured 
application using types. 

First step is to create a Contact class which goes inside a newly created folder /lib/model/contact.dart the code
of this class is going to be very simple : a first name, a last name, a phone number and an address which gives : 
```Dart
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
```
There is two things which may be surprising when coming from a language like Java : 
* the named constructor Contact.fromJson 
* the toJson method
In Dart, there is for now no simple way to handle the conversion from a complex object to JSON and vice versa. Some
way have been implemented by the community but there is nothing which convinced me like Jackson in Java. 

So now we have our first model and we are going to create our first controller, to do so let's create two files : 
* The first is /lib/controllers.dart
* The second is /lib/controllers/contactlist.dart

The /lib/controllers.dart is going to register all our controllers to have all the controllers exposed in only one file.
This is not very useful in our case but illustrates pretty well the use of 'part' and 'part of' to make some libraries.
The content of the file is the following : 
```Dart
library angulardart_flight_school_controllers;

import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/model/contact.dart';

part 'controllers/contactlist.dart';
```
Please note two things :
* The part of the library are registered with their relative path and are declared using the part keyword.
* All the dependencies of the libraries are declared in the file which declares the library and lists the parts.

Now we just have to create the missing part which is our first controller, to do so AngularDart uses the power of
Dart which provides an awesome way of declaring some metadata: the annotations. So in our case we are going to use
a *@Controller* annotation with some parameter amongst them we can notice :
* the *selector* which is a CSS selector used to detect on which part of the DOM the controller should be activated.
* the *publishAs* which indicates under which name the developer can access it in his templates. For folks coming from 
JavaScript this is closely related with the new 1.2 syntax for controller known as "controller as". 
So when all this is tied together the code of the class is: 
```Dart
part of angulardart_flight_school_controllers;

@Controller(selector: '[contact-list]', publishAs: 'contactList')
class ContactList {
  List<Contact> contacts = [ new Contact(0, "Wayne", "Bruce", "Gotham city","555-BATMAN" ),
                             new Contact(1, "Parker", "Peter", "New York","555-SPDRMN" ),
                             new Contact(2, "Storm", "Jane", "Baxter building, New York","555-INVGRL" ),
                             new Contact(3, "Richards", "Red", "Baxter building, New York","555-MRFANT" ),
                             new Contact(4, "Storm", "Johnny", "Baxter building, New York","555-TORCH" ),
                             new Contact(5, "Grimm", "Benjamin", "Baxter building, New York","555-THING" ),
                             new Contact(6, "Murdock", "Matt", "San Francisco","555-DARDVL" ),
                             new Contact(7, "Stark", "Tony", "Stark tower, New York","555-IRNMAN" )];
}
```
Firstly we indicate that this file is part of the angulardart_flight_school_controllers library and then a class is
created declaring a list of contacts and finally we add metadata to indicate that it is an AngularDart controller.

*WARNING: The Dart Editor will display a warning indicating that the Controller annotation is deprecated which is true.
However, for now there is no replacement which should come in an upcoming version (at least 1.0). For more information
about this refer to the [github issue](https://github.com/angular/angular.dart/issues/919)*

Now we must update the /web/addressbook.dart file to add
* the import of package:angular/angular.dart
* the import of package:angulardart_flight_school/controllers.dart
* the registration of a new module integrating our newly created controller
With all the code, the addressbook.dart should now look like : 
```Dart
library addressbook;
import 'package:angular/application_factory.dart';
import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/controllers.dart';

main() {
  applicationFactory()
      ..addModule(new Module()..bind(ContactList))
      ..run();
}
```
* Attentive readers would have noticed that in this example we are not using the simple period to call the methods
but we are using [method cascades](http://news.dartlang.org/2012/02/method-cascades-in-dart-posted-by-gilad.html)
which avoids to write fluent APIs and cleans the syntax in, in my opinion, a huge way.*

Finally the last file to update is the index.html, in that file we have to declare the contact-list controller and
to replace the static list by the dynamic list, to do so locate the .container>.row tag and add the declaration to 
the controller there : 
```Html
<div class="row" contact-list>
```  
And then replace the static list by dynamic list using ng-repeat and accessing the contactList.contacts variable such as : 
```Html
<li ng-repeat="contact in contactList.contacts"><a href="">{{contact.firstName}} {{contact.lastName}}</a></li>
```
*Tip - There is two lists to replace*

