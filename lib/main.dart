import 'package:flutter/material.dart';
import 'package:myfirstclass/UI/loginscreen.dart';
import 'package:myfirstclass/UI/signupscreen.dart';
import 'package:myfirstclass/UI/splashscreen.dart';
import 'package:myfirstclass/UI/splashscreen2.dart';

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
      body:Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://static.nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/f4d782c7-e231-43ff-954d-732b9a07f846/nike-just-do-it.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 450),
                ButtonRow(),
              ],
            ),
          ],
        ));
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
              backgroundColor: Colors.black,
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
              style: TextStyle(fontSize: 20, color: Colors.white , fontWeight: FontWeight.bold),
            ),
          )
        ),
        SizedBox(height: 30),
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
              style: TextStyle(fontSize: 20, color: Colors.white ,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 65),
      ],
    );
  }
}


