import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/user%20management/register_page.dart';
import 'package:flutter/material.dart';

import '../Authentication/auth.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 60,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.amber!,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                'Dont have account? Register',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const register()));
              },
            )
          ],
        ),
      ),
    );
  }
}
