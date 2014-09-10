This is a workshop developped for the AngularDart Flight School event in Nantes organized by the GDG.

The aim is to develop a sample of address book to show how powerful AngularDart is.

This workshop is divided in multiple steps, each step includes developments documented in this readme. If you have any trouble with 
one step, do not worry you can find the solution in the next step tag / branch. 

#Step 0 - Bootstrapping and Simple binding

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

### Setting up AngularDart and making our first binding

We now need to bootstrap AngularDart to start using it. As a reminder this is how we would have done it in JavaScript:
```JavaScript
angular.module('NgContacts', [])
``` 