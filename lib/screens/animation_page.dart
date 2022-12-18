import 'dart:math';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _size = 100.0;
  bool animation = false;
  final Tween<double> _animationTween1 = Tween(begin: 0, end: pi * 2);
  final Tween<double> _animationTween2 = Tween(begin: 0, end: -(pi * 2));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animation
                ? TweenAnimationBuilder<double>(
                    tween: _animationTween1,
                    duration: Duration(seconds: 3),
                    builder: (context, double value, child) {
                      return Transform.rotate(
                        angle: value,
                        child: Container(
                          color: Colors.blue,
                          height: _size,
                          width: _size,
                        ),
                      );
                    },
                  )
                : TweenAnimationBuilder<double>(
                    tween: _animationTween2,
                    duration: Duration(seconds: 3),
                    builder: (context, double value, child) {
                      return Transform.rotate(
                        angle: value,
                        child: Container(
                          color: Color.fromARGB(155, 33, 243, 229),
                          height: _size,
                          width: _size,
                        ),
                      );
                    },
                  ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  animation = !animation;
                });
              },
              child: const Text('Animate!'),
            )
          ],
        ),
      ),
    );
  }
}
