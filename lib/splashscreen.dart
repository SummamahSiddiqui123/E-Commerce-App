import 'package:flutter/material.dart';
import 'package:myfirstclass/Home.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Icon(
              Icons.check,
              color: Colors.green,
              size: 48.0,
            ),
            SizedBox(height: 20),
            Text(
              "You have successfully registered in \nour app and start working on it..",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 180,
            ),
            Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  )),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigationExample()),
                  );
                },
                child: Text("Start Shopping"))
        )],
        ),
      ),
    );
  }
}
