import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'page_phone_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PhoneAuthPage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_radius.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Flutter Firebase Phone Auth",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 22.0),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
                onPressed: () => _signOut, child: const Text("Sign Out"))
          ],
        ),
      ),
    ));
  }
}
