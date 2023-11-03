import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen4(),
  ));
}

class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({Key? key}) : super(key: key);

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
              "Logging out...",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}