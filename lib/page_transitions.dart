import 'package:flutter/material.dart';
import 'package:simplify_navigation/enums/navigation_transition_type.dart';

class PageTransitions {
  static SlideTransition rightToLeft(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const Offset begin = Offset(1.0, 0.0);
    const Offset end = Offset.zero;
    const Cubic curve = Curves.ease;
    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    final offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  static SlideTransition leftToRight(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const Offset begin = Offset(-1.0, 0.0);
    const Offset end = Offset.zero;
    const Cubic curve = Curves.ease;
    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    final offsetAnimation = animation.drive(tween);

    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  static FadeTransition fade(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  static Widget none(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }

  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  ) getTransition(NavigationTransitionType transition) {
    switch (transition) {
      case NavigationTransitionType.fade:
        return PageTransitions.fade;
      case NavigationTransitionType.rightToLeft:
        return PageTransitions.rightToLeft;
      case NavigationTransitionType.leftToRight:
        return PageTransitions.leftToRight;
      case NavigationTransitionType.none:
      default:
        return PageTransitions.none;
    }
  }
}
