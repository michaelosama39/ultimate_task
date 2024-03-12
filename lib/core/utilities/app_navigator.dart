// import 'package:flutter/material.dart';
//
// enum PageAnimationType {
//   slideFromRight,
//   slideFromLeft,
//   slideFromTop,
//   slideFromBottom,
//   fade,
//   size,
// }
//
// class PageRouteBuilderWithAnimations<T> extends PageRouteBuilder<T> {
//   final Widget page;
//   final PageAnimationType animationType;
//   final Curve curve;
//   final Duration duration;
//
//   PageRouteBuilderWithAnimations({
//     required this.page,
//     required this.animationType,
//     this.curve = Curves.easeInOut,
//     this.duration = const Duration(milliseconds: 500),
//   }) : super(
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) {
//             return page;
//           },
//           transitionDuration: duration,
//           transitionsBuilder: (BuildContext context,
//               Animation<double> animation,
//               Animation<double> secondaryAnimation,
//               Widget child) {
//             switch (animationType) {
//               case PageAnimationType.slideFromRight:
//                 return SlideTransition(
//                   position: Tween<Offset>(
//                     begin: const Offset(1, 0),
//                     end: Offset.zero,
//                   ).animate(CurvedAnimation(
//                     parent: animation,
//                     curve: curve,
//                   )),
//                   child: child,
//                 );
//               case PageAnimationType.slideFromLeft:
//                 return SlideTransition(
//                   position: Tween<Offset>(
//                     begin: const Offset(-1, 0),
//                     end: Offset.zero,
//                   ).animate(CurvedAnimation(
//                     parent: animation,
//                     curve: curve,
//                   )),
//                   child: child,
//                 );
//               case PageAnimationType.slideFromTop:
//                 return SlideTransition(
//                   position: Tween<Offset>(
//                     begin: const Offset(0, -1),
//                     end: Offset.zero,
//                   ).animate(CurvedAnimation(
//                     parent: animation,
//                     curve: curve,
//                   )),
//                   child: child,
//                 );
//               case PageAnimationType.slideFromBottom:
//                 return SlideTransition(
//                   position: Tween<Offset>(
//                     begin: const Offset(0, 1),
//                     end: Offset.zero,
//                   ).animate(CurvedAnimation(
//                     parent: animation,
//                     curve: curve,
//                   )),
//                   child: child,
//                 );
//               case PageAnimationType.fade:
//                 return FadeTransition(
//                   opacity: Tween<double>(
//                     begin: 0.0,
//                     end: 1.0,
//                   ).animate(CurvedAnimation(
//                     parent: animation,
//                     curve: curve,
//                   )),
//                   child: child,
//                 );
//               case PageAnimationType.size:
//                 return Align(
//                   alignment: Alignment.center,
//                   child: SizeTransition(
//                     sizeFactor: Tween<double>(
//                       begin: 0.0,
//                       end: 1.0,
//                     ).animate(CurvedAnimation(
//                       parent: animation,
//                       curve: curve,
//                     )),
//                     child: child,
//                   ),
//                 );
//               default:
//                 return child;
//             }
//           },
//         );
// }

import 'package:flutter/material.dart';

enum TransitionType {
  fade,
  slideFromRight,
  slideFromLeft,
  slideFromTop,
  slideFromBottom,
}

class Go {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<dynamic> to(Widget page,
      {TransitionType transitionType = TransitionType.fade}) {
    switch (transitionType) {
      case TransitionType.fade:
        return navigatorKey.currentState!.push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromRight:
        return navigatorKey.currentState!.push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromLeft:
        return navigatorKey.currentState!.push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromTop:
        return navigatorKey.currentState!.push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromBottom:
        return navigatorKey.currentState!.push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      default:
        return navigatorKey.currentState!.push(
          MaterialPageRoute(builder: (context) => page),
        );
    }
  }

  static Future<dynamic> pushReplacement(Widget page,
      {TransitionType transitionType = TransitionType.fade}) {
    switch (transitionType) {
      case TransitionType.fade:
        return navigatorKey.currentState!.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromRight:
        return navigatorKey.currentState!.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromLeft:
        return navigatorKey.currentState!.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromTop:
        return navigatorKey.currentState!.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      case TransitionType.slideFromBottom:
        return navigatorKey.currentState!.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
        );
      default:
        return navigatorKey.currentState!.pushReplacement(
          MaterialPageRoute(builder: (context) => page),
        );
    }
  }

  static Future<dynamic> offAll(Widget page,
      {TransitionType transitionType = TransitionType.fade}) {
    switch (transitionType) {
      case TransitionType.fade:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromRight:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromLeft:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromTop:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromBottom:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      default:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => page),
              (route) => false,
        );
    }
  }
  static Future<dynamic> pushAndRemoveUntil(Widget page,
      {TransitionType transitionType = TransitionType.fade}) {
    switch (transitionType) {
      case TransitionType.fade:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromRight:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromLeft:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromTop:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      case TransitionType.slideFromBottom:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
          ),
              (route) => false,
        );
      default:
        return navigatorKey.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => page),
              (route) => false,
        );
    }
  }

  static void back() {
    navigatorKey.currentState!.pop();
  }
}
