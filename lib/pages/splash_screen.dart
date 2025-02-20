import 'package:flutter/material.dart';
import 'package:ukk_tiket_ray/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );

    _animation = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween(
          begin: Offset(-1.2, 0.0),
          end: Offset(0.0, 0.0),
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 37.5,
      ),
      TweenSequenceItem(tween: ConstantTween(Offset(0.0, 0.0)), weight: 25),
      TweenSequenceItem(
        tween: Tween(
          begin: Offset(0.0, 0.0),
          end: Offset(1.2, 0.0),
        ).chain(CurveTween(curve: Curves.easeIn)),
        weight: 37.5,
      ),
    ]).animate(_controller);

    _controller.forward();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return SlideTransition(
              position: _animation,
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            );
          },
        ),
      ),
    );
  }
}
