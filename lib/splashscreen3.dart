import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen3(),
  ));
}

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              color: Colors.black,
            ),
            SizedBox(height: 16.0),
            Text(
              "Logging in...",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
