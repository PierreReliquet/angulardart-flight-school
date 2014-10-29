## TODO - update the readme for version 1.0

This is a workshop developped for the AngularDart Flight School event in Nantes organized by the GDG.

The aim is to develop a sample of address book to show how powerful is AngularDart.

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
* dart.js actually bootstraps our application by checking if the Dart VM is available otherwise it tries to fallback to the JS version (but this requires the Dart version to have been compiled to JS).

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
* the *publishAs* which indicates under which name the developer can access it in his templates. For folks coming from JavaScript this is closely related with the new 1.2 syntax for controller known as "controller as". 

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
*Attentive readers would have noticed that in this example we are not using the simple period to call the methods
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

# Step 3 - Services & Dependency injection
For now the ContactList controller contains a list of contacts but in a real app the list of data would not be stored
in the controller. It would be provided by a service which would get the data from either local storage (local storage,
session storage or embedded database) or remote API. 

In this part the list of contacts is going to be externalized in a Contacts service which will provide the data and 
might also provide some useful methods such as findById, update, remove and so on... To do so two files must be added:
/lib/services.dart and /lib/services/contacts.dart. For those files we are going to create the same structure as the controllers.

The services.dart file declares the library and the parts composing itself : 
```Dart
library angulardart_flight_school_services;

import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/model/contact.dart';

part 'services/contacts.dart';
```
The contacts.dart contains the service enabling to get the contacts. The only specificity is that there is again an annotation
to declare that the service can be injected within AngularDart module. 
```Dart
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
```
Then we have to update the addressbook.dart file to add the import towards the services.dart and
to register the Contacts service, so angular will be aware that it might inject the Contacts service : 
```Dart
main() {
  applicationFactory()
      ..addModule(
        new Module()
          ..bind(ContactList)
          ..bind(Contacts)
        )
      ..run();
}
```
Finally let's replace the list in the controller by one recovered from the service. To do so, a constructor is going 
to be required to enable the DI. One specificity of AngularDart over AngularJS is that AngularDart is injecting the 
dependency based on their types and not anymore on their names which annihilates the risk of losing the dependency
injection when minifying the code. For information, this feature is coming in AngularJS 2.0. The steps are : 
* Removes the list of contacts hard-coded in the ContactList controller
* Add a new instance variable whom type would be Contacts (and add the corresponding import) and name would be contactsSvc
* Create a constructor which affects the contactsSvc variable and get the contacts list.

Once done your controller should look like this : 
```Dart
part of angulardart_flight_school_controllers;

@Controller(selector: '[contact-list]', publishAs: 'contactList')
class ContactList {
  Contacts contactsSvc;
  List<Contact> contacts;
  
  ContactList(this.contactsSvc) {
    contacts = contactsSvc.contacts;
  }
}
```

# Step 4 - Directives aka Components & Decorators

AngularDart has not yet reached version 1.0 but some major differences can already be noticed. Among them some resources 
have been renamed which aims at clarifying the use of some APIs such as the directive which was in AngularJS not really
the easiest API ever written.

In AngularDart directives have been splitted in two sub-categories
* the decorator which aims at adding behavior to already existing DOM elements. Those are most of the time represented as 
tag attributes.
* the component whom implementation is a sub-set of the webcomponents standard. The component aims at creating new tags
not available in the HTML standard.

The great news about that is that the API is finally consistent with the controller API! Everything is going through annotation
with selectors. 

Let's dive deeper into those new beasts! 

## Components 
As usual the first things to do is to create a /lib/components.dart file in which we are going to declare our libraries the dependencies
and the parts (in our case the part). The content of the file is as expected : 
```Dart
library angulardart_flight_school_components;

import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/model/contact.dart';

part 'components/vcard/vcard.dart';
```

Then the /lib/components/vcard/vcard.dart must be created as part of the library. This file must follow the follwoing
rules : 
* Declare a class named VCard
* Inside of that VCard class, it must have a *contact* instance variable of type *Contact*
* This variable should respect a 2-way binding to be updated each time a contact gets updated
* Finally the class should be a component annotated with the proper @Component annotation

With all the parts tied up together the result appears to be the following file : 
```Dart
part of angulardart_flight_school_components;

/**
 * A VCard component which takes as entry a contact and display it in a standardized way.
 */
@Component(
    selector: 'vcard',
    publishAs: 'vcard',
    templateUrl: 'packages/angulardart_flight_school/components/vcard/vcard_component.html',
    cssUrl: 'packages/angulardart_flight_school/components/vcard/vcard_component.css'
    
)
class VCard {
  // The NgTwoWay annotation is deprecated but the replacement is
  // not yet implemented so we need to use this annotation
  @NgTwoWay('contact')
  Contact contact;
}
```
Firstly, it can be noticed that the API is really consistent with the @Controller one since we are retrieving 
the selector and publishAs parameters. Secondly, it can be noticed that we are referencing two files :
* the template url which is the location (once deployed) where the template of our web component can be found
* the css url which is the style which is going to be applied to the web component 

/!\ as expressed in the web component API, the custom component will not be aware of your application style and
your component style is not going to leak outside of your component. This means that if I have the following template:
```Html
<div class="contact-card">Foo</div>
```
And the application declare the following CSS rule
```CSS
div.contact-card {
	background-color: black;
}
```
This rule is going to be ignored since the web component are totally agnostic of the external CSS. In the same
way if a rule was written in the component CSS, this rule would not be applied to the main app even if it matched some elements. 

The content of the two files is given below:
```Html
 <div class="contact-card">
    <div class="contact-card-inner">
        <h4>{{vcard.contact.firstName}} {{vcard.contact.lastName | uppercase}}</h4>

        <div class="contact-address">{{vcard.contact.address}}</div>
        <div class="contact-phone">{{vcard.contact.phone}}</div>
    </div>
</div>
```  
```CSS
.contact-card {
    position:relative;
    float: left;
    margin-bottom: 20px;
    width: 100%;
}

.contact-card .contact-card-inner {
    /*height: 100px;*/
    padding: 20px;
    background-color: #f5f5f5;
    border: 1px solid #DDD;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
    -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}

.contact-card:before, .contact-card:after {
    -moz-transform: rotate(-2deg);
    -webkit-transform: rotate(-2deg);
    bottom: 18px;
    box-shadow: 0 15px 10px rgba(0, 0, 0, 0.7);
    content: "";
    height: 20%;
    left: 10px;
    max-width: 300px;
    position: absolute;
    width: 80%;
    z-index: -2;
}

.contact-card:after {
    -moz-transform: rotate(2deg);
    -webkit-transform: rotate(2deg);
    left: auto;
    right: 10px;
}
```  
Then there is two steps remaining : 
* Adds the VCard class to our module so AngularDart is aware of that class and knows how to handle it if we are using
the vcard tag inside an HTML template.
* Use the vcard tag inside the application by replacing the piece of HTML in the template by the vcard tag inside the 
index.html file. This means replacing : 
```Html
<div class="contact-card span4" ng-repeat="contact in contactList.contacts">
	<div class="contact-card-inner">
    	<h4>{{contact.firstName}} {{contact.lastName}}</h4>
        <div class="contact-address">{{contact.address}}</div>
        <div class="contact-phone">{{contact.phone}}</div>
    </div>
</div> 
```
With the following line : 
```Html
<vcard contact="contact" class="span4" ng-repeat="contact in contactList.contacts"></vcard>
```
And this is it! Here is the first component of the ngContacts app, there is now a reusable vcard which can
be added in any screen of the application.

## Decorators
The new objective is to discover the decorators and to do so we are going to develop our own tooltip system which
displays for a given contact its address and phone with the following format : "address - phone". 

After having create the /lib/decorators.dart file and the /lib/decorators folder, one must create the /lib/decorators/tooltip.dart
file which is going to contain the decorator's behavior. 

This file must : 
* Declare a tooltip class as part of the angulardart_flight_school_decorators library
* Declare that the tooltip class is a decorator with the '[tooltip]' selector
* Add two event listeners in the constructor, one to add the tooltip on mouseenter and the second one to remove it on mouseleave
* Have a bound contact as an instance variable to be able to access its data when displaying the tooltip (using NgOneWay annotation)

This gives us the following file : 
```Dart
part of angulardart_flight_school_decorators;

@Decorator(selector: '[tooltip]')
class Tooltip {
  
  Element _elm;
  
  @NgOneWay('tooltip')
  Contact tooltip;
  
  Tooltip(this._elm) {
    this._elm.onMouseEnter.listen((MouseEvent e) {
      DivElement div = new Element.html("<div id='tooltip'>${tooltip.address} - ${tooltip.phone}</div>");
      div.style
        ..position = 'absolute'
        ..left = '${e.page.x + 10}px'
        ..top = '${e.page.y + 10}px'
        ..padding = '5px'
        ..borderRadius = '5px'
        ..backgroundColor = 'white'
        ..border = 'solid 1px black';
      document.body.append(div);
    });
    this._elm.onMouseLeave.listen((MouseEvent e) {
      var tooltip = document.querySelector('#tooltip');
      if (tooltip != null) {
        tooltip.remove();
      }
    });
  }
}
```

Then the Tooltip class must be added to the angular module and finally used inside the index.html file : 
```Html
<li ng-repeat="contact in contactList.contacts"><a tooltip="contact" href="">{{contact.firstName}} {{contact.lastName}}</a></li>
```

Now run the application and go over one of the contact in the list on the left and look at your incredible tooltips!

# Step 5 - Filters aka Formatters
Within AngularDart the filters have, just like the directives, being renamed in order to clarify their meanings.
Filters are now called Formatters and this seems logical when we notice that the AngularJS documentation indicates 
that the purpose of an AngularJS' filter is to format the data for display which leads us to understand easily the meaning
of formatter. In addition, this avoids having a filter formatter inside the category of filters which was quite
ambiguous.

As it has been seen through Controllers, Decorators & Components AngularDart tried to harmonize the API to provide
a smooth developer experience accross AngularDart development. So, once again the formatter is going to be a callable
object annotated with the @Formatter annotation which gives a pattern like the following : 
```Dart
@Formatter(name: 'myFormatter')
class myFormatter {
	List<T> call(List<T> list, ...) {
		...
		return aNewFormattedList;
	}
}
```
The concept of callable object is indicated by the call method inside the class which allows us once the class has
been instantiated to invoke directly the instance like : 
```Dart
var formatter = new myFormatter();
var newList = formatter(dataList);
```

In the address book an interesting feature might be to be able to perform searches without caring about lowercase or
uppercase, to do that a formatter could be great and we are going to implement a doSearch formatter. The characteristics 
are the following : 
* Takes as an input a list of contact and a String corresponding to the search
* Returns a new list with all the contacts whom first or last names match the given string

*/!\ You must explicitly handle the case where the search is null*

*/!\ Do not forget to register the formatter in the main method*

An example of solution is given below:
```Dart
@Formatter(name: "doSearch")
class SearchFilter {
  List<Contact> call(List<Contact> contacts, String search) {
    if (search == null) {
      return contacts;
    }
    return contacts.where(
        (Contact c) => (
            c.firstName.toLowerCase().contains(search.toLowerCase()) ||
            c.lastName.toLowerCase().contains(search.toLowerCase()))
        ).toList();
  }
}
```

Then register it inside the AngularDart module to be able to use it inside the application and finally use it inside
the index.html file to filter the contacts dynamically. There is two lists to filter but the use is like : 
```Html
<li ng-repeat="contact in contactList.contacts | doSearch:search"><a tooltip="contact" href="">{{contact.firstName}} {{contact.lastName}}</a></li>
``` 
 
# Step 6 - Routing and templating

The AngularDart roundtrip is almost over but there is one last piece to discover. Any single page application is obviously made of one single page but 
also has many views. The routing is consequently necessary to be able to have rich internet application. 

When coming from AngularJS, two solutions might come in mind : 
* ngRoute the (too) simple but efficient provided by the Angular core team since 1.0
* ui-router the community router extremely powerful which supports the nested views and many cool stuff

In AngularDart, the router has been rewritten which means that it offers more abilities than the ngRoute router and for instance offers to nest routes.

The router is based on the concept of function as first-class citizen since all the routing is handled by a single function which must comply with the 
[RouteInitializerFn typedef](https://docs.angulardart.org/#angular/angular-routing@id_RouteInitializerFn). This methods takes two parameters :
* The Router, the class which stores the url => handler relationship
* The RouteViewFactory, a factory used to create the previous relationship

In ngContacts, three routes are going to be available : 
* /list - the list of all the contacts and is also the default route
* /contact/{id}/view - the view of a specific contact (all field disabled)
* /contact/{id}/edit - the edition of a contact

The routing is going to be handled by the /lib/routing.dart file 
```Dart
library angulardart_flight_school_routing;

import "package:angular/angular.dart";

void addressBookRouter(Router router, RouteViewFactory views) {
  views.configure({
    'contact': ngRoute(
          path: '/contact/:id',
          mount: {
            'edit': ngRoute(
                path: '/edit',
                view: 'partials/edit.html'
            ),
            'view': ngRoute(
                path: '/view',
                view: 'partials/view.html'
            )
          }),
    'list': ngRoute(
        path: '/list',
        view: 'partials/list.html',
        defaultRoute : true)
  });
}
```
As one can see on the previous code snippet three templates are required. These templates result from an extract of the index.html and edit.html file content. 
To simplify one might get the templates directly from the [github repository](https://github.com/PierreReliquet/angulardart-flight-school/tree/master/web/partials).

Then once the templates are recovered it is required to add a new controller which is going to handle the display and/or edit of a single contact. 
This controller is named ContactEdit and must be added as part of the angulardart_flight_school_controllers library. The only specific part of that controller
is that on instantiation time, one must recover the contact id from the address bar to recover the right contact in the service; this can be done through the
RouteProvider.parameters map. Otherwise this controller is standard as shown below:  

```Dart
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
```
The controller is now ready and the view (index.html) must be updated! All the div.row tag must be removed and replaced by the ng-view component. 

*/!\ In AngularJS ng-view can be either a decorator or a component but in AngularDart it is only a component*

The div.container element now contains only : 
```Html
<div class="hero-unit">
	<h1>NgContacts</h1>
    <h2>Taking care of your people, one at a time.</h2>
</div>
<ng-view></ng-view>
``` 
The addressbook.dart file must also be updated to register : 
* The ContactEdit controller
* The RouteInitializerFn function
* The NgRoutingUsePushState, this component indicates to AngularDart whether it should listen to the onPopState event (real url change) or onHashChange
event which corresponds to a change after the hashbang sign (#). This is the standard Angular routing system.

The code of the addresssbook.dart is finally : 
```Dart
library addressbook;
import 'package:angular/application_factory.dart';
import 'package:angular/angular.dart';
import 'package:angulardart_flight_school/controllers.dart';
import 'package:angulardart_flight_school/services.dart';
import 'package:angulardart_flight_school/components.dart';
import 'package:angulardart_flight_school/decorators.dart';
import 'package:angulardart_flight_school/formatters.dart';
import 'package:angulardart_flight_school/routing.dart';

main() {
  applicationFactory()
      ..addModule(
        new Module()
          ..bind(ContactList)
          ..bind(ContactEdit)
          ..bind(Contacts)
          ..bind(VCard)
          ..bind(Tooltip)
          ..bind(SearchFilter)
          ..bind(RouteInitializerFn, toValue: addressBookRouter)
          // Required otherwise angulardart does not know how to interprete the route
          ..bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false))
        )
      ..run();
}
``` 

At this point everything should be running fine, however there is, fow now, one last thing to do : register the partials into the pubspec.yaml file so that the 
angular transformer is going to be aware that during the transformation, those files should be included. The transformers section of the pubspec.yaml file finally looks like : 
```Yaml
transformers:
- angular:
   # https://github.com/angular/angular.dart/issues/1279 for now we need to add manually the files to include in the transformer
   html_files:
    - web/partials/edit.html
    - web/partials/list.html
    - web/partials/view.html

```
