part of angulardart_flight_school_components;

@Component(
    selector: 'contact-view',
    templateUrl: 'components/contact_view/contact_view.html'
)
class ContactView extends AbstractContact {
  
  ContactView(Contacts contactsSvc, RouteProvider routeProvider, Router router) : super(contactsSvc, routeProvider, router);
 
}