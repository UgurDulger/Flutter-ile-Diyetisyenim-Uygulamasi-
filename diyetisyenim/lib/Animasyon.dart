import 'package:flutter/cupertino.dart';

class BouncyPageRoute extends PageRouteBuilder {
  final Widget widget;
  BouncyPageRoute( {required this.widget})
      : super(
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secAnimation,
          Widget child) {
        animation = CurvedAnimation(
          parent: animation,
          curve: Curves.fastLinearToSlowEaseIn // Animasyon Seçimi
        );
        return ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        );
      },
      pageBuilder: (context, Animation<double> animation,
          Animation<double> secAnimation) {
        return widget;
      });
}