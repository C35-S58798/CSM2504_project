// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'SignUp_screen.dart';
import 'forgot_pw_screen.dart';
import '../widgets/rounded_button.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_password_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 400),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/Logo.png"),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 45,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          UsernameInputField(onChanged: (value) {}),
          const SizedBox(
            height: 15,
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 15,
          ),
          LoginButton(),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: const Text("Forgot Password?"),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => ForgotPW())),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            child: const Text("Sign Up"),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => SignUp()));
            },
          ),
          const SizedBox(height: 90),
          const Text(
            'XYZ',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
