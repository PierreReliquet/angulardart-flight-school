library href_router;

import 'package:angular/angular.dart';
import 'dart:html';

///
/// Adding the support of the router for routing 
///
@Decorator(selector: '[href-router]')
class HrefRouter {
  Element _elm;
  Router _router;
  
  String href;
  
  HrefRouter(this._elm, this._router) {
    this.href = this._elm.attributes['href-router'];
    this._elm.onClick.listen((_) {
      this._router.go(href, {});
    });
  }
}