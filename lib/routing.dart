library angulardart_flight_school_routing;

import "package:angular/angular.dart";

void addressBookRouter(Router router, RouteViewFactory views) {
  views.configure({
    'list': ngRoute(
      path: '/list',
      view: 'partials/list.html',
      defaultRoute : true),
    'contact': ngRoute(
      path: '/contact/:id',
      mount: {
        'edit': ngRoute(
            path: '/edit',
            viewHtml: '<contact-edit></contact-edit>'
        ),
        'view': ngRoute(
            path: '/view',
            viewHtml: '<contact-view></contact-view>'
        )
      })
  });
}