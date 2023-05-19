import 'package:flutter/material.dart';

 class CustomPageRoute extends PageRouteBuilder {
  CustomPageRoute({required this.child})
      : super(
          pageBuilder: (context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              child,
          transitionDuration: const Duration(milliseconds: 500),
        );

  Widget child;
}
