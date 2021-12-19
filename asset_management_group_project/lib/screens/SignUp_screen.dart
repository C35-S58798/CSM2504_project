// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/rounded_password_field.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_button.dart';
import 'Login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            centerTitle: true,
            title: const Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              iconSize: 40,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const Login()));
              },
            ),
          ),
          preferredSize: Size.fromHeight(60.0),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 400),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/Logo.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            UsernameInputField(onChanged: (value) {}),
            const SizedBox(
              height: 5,
            ),
            EmailInputField(onChanged: (value) {}),
            const SizedBox(
              height: 5,
            ),
            RoundedPasswordField(onChanged: (value) {}),
            const SizedBox(
              height: 5,
            ),
            ConfirmPasswordField(onChanged: (value) {}),
            const SizedBox(
              height: 5,
            ),
            SignUpButton(),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text("Aleady have any account? Login"),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Login()));
              },
            ),
            const SizedBox(height: 60),
            const Text(
              'XYZ',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ));
  }
}
