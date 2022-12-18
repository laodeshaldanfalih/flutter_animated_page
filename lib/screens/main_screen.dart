import 'package:flutter/material.dart';
import 'screens.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/main-screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ImplicitAnimation.routeName);
              },
              child: Container(
                width: 250,
                height: 30,
                child: const Center(
                  child: Text('Implicit'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ExplicitAnimation.routeName);
              },
              child: Container(
                width: 250,
                height: 30,
                child: const Center(
                  child: Text('Explicit'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
