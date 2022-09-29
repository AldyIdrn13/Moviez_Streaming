import 'package:flutter/cupertino.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget enterWidget;

  CustomPageRoute(this.enterWidget)
      : super(
          transitionDuration: Duration(milliseconds: 250),
          reverseTransitionDuration: Duration(milliseconds: 250),
          pageBuilder: (context, animation, secondaryAnimation) => enterWidget,
      );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget enterWidget) => 
    SlideTransition(
      position: Tween<Offset>(
        begin: Offset(1,0),
        end: Offset.zero,
      ).animate(animation),
      child: enterWidget,
    );
}