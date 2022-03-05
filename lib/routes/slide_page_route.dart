import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SlidePageRouteBuilder<T> extends PageRouteBuilder<T> {
  final Axis direction;

  SlidePageRouteBuilder({required this.widget, this.direction = Axis.horizontal})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return SharedAxisTransition(
              transitionType: direction == Axis.horizontal ? SharedAxisTransitionType.horizontal : SharedAxisTransitionType.vertical,
              secondaryAnimation: secondaryAnimation,
              animation: animation,
              child: child,
            );
          },
        );

  final Widget widget;
}
