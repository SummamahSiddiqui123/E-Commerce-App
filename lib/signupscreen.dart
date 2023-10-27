import 'package:flutter/material.dart';
import 'package:myfirstclass/Home.dart';
import 'package:myfirstclass/loginscreen.dart';
import 'package:myfirstclass/splashscreen.dart';

void main() {}

class SignupView extends StatelessWidget {
  SignupView({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            const Text(
              "Sign-up",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: passowrdController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                emailController.text = "";
                passowrdController.text = "";
                },
                child: Text(
                  "Sign-up",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ])),
    );
  }
}

