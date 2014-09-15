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