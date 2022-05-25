import 'package:flutter/material.dart';
// import 'package:flutterapp/screens/';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:csi464/screens/login.dart';

const p_color = Color(0xFF219653);

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              // margin: EdgeInsets.only(bottom: 80),
              margin: EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
              child: SvgPicture.asset(
                'img/fg_pass.svg',
                width: 320,
                height: 192,
              ),
              // Image.asset('img/login.png'),
            ),
            Card(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Forgot Pass",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        emailField(),
                        const SizedBox(
                          height: 24,
                        ),
                        passwordField(),
                        const SizedBox(
                          height: 24,
                        ),
                        password2Field(),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    // buttonPadding: EdgeInsets.only(bottom: 24),
                    alignment: MainAxisAlignment.start,
                    children: [
                      RaisedButton(
                        color: p_color,
                        textColor: Colors.white,
                        onPressed: () {
                          // Perform some action
                          Navigator.pop(context);
                        },
                        child: Text("CHANGE"),
                      ),
                      FlatButton(
                        textColor: p_color,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: const Text('CANCEL'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget emailField() => TextField(
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "name@example.com",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next);

  Widget passwordField() => TextField(
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password",
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
      );
  Widget password2Field() => TextField(
        decoration: InputDecoration(
          labelText: "Confirm Password",
          hintText: "Confirm Password",
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
      );
}
