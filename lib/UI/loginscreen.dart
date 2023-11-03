import 'package:flutter/material.dart';
import 'package:myfirstclass/UI/Home.dart';
import 'package:myfirstclass/UI/forgetpassword.dart';
import 'package:myfirstclass/UI/signupscreen.dart';
import 'package:myfirstclass/UI/splashscreen3.dart';

void main() {}

class Loginview extends StatelessWidget {
  Loginview({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text("Please login or Signup to continue our app..!"),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email Address",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: passowrdController,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          Container(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ForgetView()),
                  );
                },
                child: Text(
                  "Forget Password.?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen3()));
                Future.delayed(Duration(seconds: 2), () {
                  emailController.text = "";
                  passowrdController.text = "";
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigationExample()),
                  );
                });
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "or",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 25.0),
                side: BorderSide(color: Colors.white, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.white, 
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Continue with Facebook",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  )),
              onPressed: () {},
              child: Text(
                "Continue with Google",
                style: TextStyle(fontSize: 16 , color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 25.0),
                side: BorderSide(color: Colors.black, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apple,
                    color: Colors.black, 
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Continue with Apple",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
