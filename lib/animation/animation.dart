import 'package:flutter/material.dart';
import 'package:google_translate/pages/index.dart';

class OpenAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _openAnimationState();
}

class _openAnimationState extends State<OpenAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  final imageChild = 'images/maImg.jpeg';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(
          seconds: 1,
        ),
        vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return IndexPage();
        }), (route) => route == null);
      }
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        imageChild,
        fit: BoxFit.cover,
      ),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    _controller.dispose();
    super.dispose();
  }
}
