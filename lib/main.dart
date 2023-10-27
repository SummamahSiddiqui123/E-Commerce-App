import 'package:flutter/material.dart';
import 'package:myfirstclass/loginscreen.dart';
import 'package:myfirstclass/signupscreen.dart';
import 'package:myfirstclass/splashscreen.dart';
import 'package:myfirstclass/splashscreen2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://www.cnet.com/a/img/resize/1894f7d9c127a36dce45071fc522d2670e354770/hub/2020/11/09/60260ea1-256d-4f0c-aed5-b474b7038e59/07-iphone-12-mini.jpg?auto=webp&fit=crop&height=675&width=1200',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: YourContentWidget(),
              ),
              ButtonRow(),
            ],
          ),
        ],
      ),
    );
  }
}

class YourContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Your Mobile,\nYour Style,\nUpgrade to Excellence.",
        style: TextStyle(fontSize: 30, color: Colors.white , fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 247, 175, 81),
              padding: EdgeInsets.symmetric(vertical: 25.0),
              side: BorderSide(color: Colors.white, width: 2),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              )
            ),
            onPressed: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SplashScreen1()));
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Loginview()),
                    );
                  });
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20, color: Colors.black , fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 247, 175, 81),
              padding: EdgeInsets.symmetric(vertical: 25.0),
              side: BorderSide(color: Colors.white, width: 2), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              )
            ),
            onPressed: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SplashScreen1()));
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupView()),
                    );
                  });
            },
            child: Text(
              'Signup',
              style: TextStyle(fontSize: 20, color: Colors.black ,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 65),
      ],
    );
  }
}


