import 'package:flutter/material.dart';
import 'package:tictactoe/utils/utils.dart';

class NavigationService {
  NavigationService._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<void> pushRoute(Widget widget) async {
    if (navigatorKey.currentState != null) {
      await navigatorKey.currentState!
          .push(MaterialPageRoute(builder: (context) => widget));
    } else {
      Utilities.debugPrintCustom("pushRoute null");
    }
  }

  static Future<void> pushAndRemoveRoute(Widget widget) async {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!.pushAndRemoveUntil<void>(
        MaterialPageRoute<void>(builder: (_) => widget),
        (route) => false,
      );
    } else {
      Utilities.debugPrintCustom("pushRoute null");
    }
  }

  static Future<void> pushAndRemoveNamedRoute(String routeName) async {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!
          .pushNamedAndRemoveUntil(routeName, (route) => false);
    } else {
      Utilities.debugPrintCustom("pushRoute null");
    }
  }

  static Future<void> pushNamedRoute(String routeName) async {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!.pushNamed(routeName);
    } else {
      Utilities.debugPrintCustom("pushRoute null");
    }
  }
}
