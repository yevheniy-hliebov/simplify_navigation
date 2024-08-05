library simplify_navigation;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplify_navigation/enums/navigation_transition_type.dart';
import 'package:simplify_navigation/page_transitions.dart';

class SimplyNavigator {
  static GlobalKey<NavigatorState> globalNavigatorKey =
      GlobalKey<NavigatorState>();

  static void push(
    BuildContext context, {
    required Widget page,
    NavigationTransitionType transition = NavigationTransitionType.none,
    GlobalKey<NavigatorState>? navigationKey,
  }) {
    final navigator = navigationKey?.currentState ?? Navigator.of(context);
    navigator.push(_pageRouteBuilder(page, transition));
  }

  static void pushAndRemoveAll(
    BuildContext context, {
    required Widget page,
    NavigationTransitionType transition = NavigationTransitionType.none,
    GlobalKey<NavigatorState>? navigationKey,
  }) {
    final navigator = navigationKey?.currentState ?? Navigator.of(context);
    navigator.pushAndRemoveUntil(
      _pageRouteBuilder(page, transition),
      (route) => false,
    );
  }

  static void pushReplacement(
    BuildContext context, {
    required Widget page,
    NavigationTransitionType transition = NavigationTransitionType.none,
    GlobalKey<NavigatorState>? navigationKey,
  }) {
    final navigator = navigationKey?.currentState ?? Navigator.of(context);
    navigator.pushReplacement(_pageRouteBuilder(page, transition));
  }

  static void pop(
    BuildContext context, {
    GlobalKey<NavigatorState>? navigationKey,
  }) {
    final navigator = navigationKey?.currentState ?? Navigator.of(context);
    navigator.pop();
  }

  static void systemPop() {
    SystemNavigator.pop();
  }

  static Route _pageRouteBuilder(
      Widget page, NavigationTransitionType transition) {
    return PageRouteBuilder(
      transitionsBuilder: PageTransitions.getTransition(transition),
      pageBuilder: (context, animation, secondaryAnimation) {
        return page;
      },
    );
  }
}
