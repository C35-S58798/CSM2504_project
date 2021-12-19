import 'package:flutter/material.dart';
import '../widgets/rounded_input_field.dart';
import '../widgets/rounded_button.dart';
import 'Login_screen.dart';

class ForgotPW extends StatefulWidget {
  const ForgotPW({Key? key}) : super(key: key);

  @override
  _ForgotPWState createState() => _ForgotPWState();
}

class _ForgotPWState extends State<ForgotPW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            centerTitle: true,
            title: const Text(
              "Reset Password",
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
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              iconSize: 40,
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Login()));
              },
            ),
          ),
          preferredSize: Size.fromHeight(60.0),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 400),
              width: MediaQuery.of(context).size.width,
              height: 130,
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
            EmailInputField(onChanged: (value) {}),
            const SizedBox(
              height: 5,
            ),
            ResetPWButton(),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(height: 230),
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
