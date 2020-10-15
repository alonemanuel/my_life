import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            navigationButton("Login", "/login"),
            navigationButton("Location", "/location")
          ],
        ),
      ),
    );
  }

  void navigateToScreen(String screenPath) {
    Navigator.pushNamed(context, screenPath);
  }

  ElevatedButton navigationButton(String screenName, String screenPath) {
    return ElevatedButton(
      onPressed: () => navigateToScreen(screenPath),
      child: Text("Go to $screenName"),
    );
  }
}
