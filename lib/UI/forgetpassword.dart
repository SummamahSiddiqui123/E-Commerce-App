import 'package:flutter/material.dart';
import 'package:myfirstclass/UI/loginscreen.dart';
import 'package:myfirstclass/UI/splashscreen2.dart';

void main() {}

class ForgetView extends StatelessWidget {
  ForgetView({super.key});
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
              "Reset Password",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  hintText: "Enter New-Password",
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
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  hintText: "Re-Enter the Password",
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
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SplashScreen1()));
                  Future.delayed(Duration(seconds: 2), () {
                    emailController.text = "";
                    passowrdController.text = "";
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Loginview()),
                    );
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ])),
    );
  }
}
