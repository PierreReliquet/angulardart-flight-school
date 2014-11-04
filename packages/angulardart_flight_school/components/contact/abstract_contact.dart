part of angulardart_flight_school_components;

class AbstractContact {
  Contacts _contactsSvc;
  Contact contact;
  RouteProvider _routeProvider;
  Router _router;

  AbstractContact(this._contactsSvc, this._routeProvider, this._router) {
    contact = _contactsSvc.contacts.where((c) => c.id == int.parse(_routeProvider.parameters['id'])).first;
  } 
}