import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:letamaji/pages/splash.dart';
import 'package:letamaji/pages/home.dart';
import 'package:letamaji/pages/login.dart';
import 'package:letamaji/pages/register.dart';
import 'package:letamaji/pages/order.dart';
import 'package:letamaji/pages/accept.dart';
import 'package:letamaji/pages/success.dart';
import 'package:letamaji/pages/orders.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _splashHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SplashPage());
  static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => LoginPage());
  static Handler _registerHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => RegisterPage());
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage(params['username'][0]));
  static Handler _orderHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => OrderPage());
  static Handler _acceptHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => AcceptPage());
  static Handler _successHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SuccessPage());
  static Handler _ordersHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => OrdersPage());

  static void setupRouter() {
    router.define(
      'splash',
      handler: _splashHandler,
    );
    router.define(
      'login',
      handler: _loginHandler,
    );
    router.define(
      'register',
      handler: _registerHandler,
    );
    router.define(
      'home/:username',
      handler: _homeHandler,
    );
    router.define(
      'order',
      handler: _orderHandler,
    );
    router.define(
      'accept',
      handler: _acceptHandler,
    );
    router.define(
      'success',
      handler: _successHandler,
    );
    router.define(
      'orders',
      handler: _ordersHandler,
    );
  }
}
