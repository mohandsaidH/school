import 'package:firbasefutter/firebase/firebase_auth.dart';
import 'package:firbasefutter/scrreen/splash/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApph());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController password_controller = TextEditingController();
  TextEditingController email_Controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    password_controller.dispose();
    email_Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: email_Controller,
                  decoration: InputDecoration(
                    filled: true,
                    // Fill the background with color
                    fillColor: Color(0xffEFF2F5),
                    hintText: "Enter email",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      // Border color after pressing
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffEFF2F5)),
                      // Border color before pressing
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: password_controller,
                  decoration: InputDecoration(
                    filled: true,
                    // Fill the background with color
                    fillColor: Color(0xffEFF2F5),
                    hintText: "Enter pass word",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      // Border color after pressing
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffEFF2F5)),
                      // Border color before pressing
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    SiginUp_UI();
                  },
                  child: Text("Sign Up"),
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }

  void SiginUp_UI() {
    FirebaseAuthController().signUp(
        email: email_Controller.text, password: password_controller.text);
  }
}

class MyApph extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
