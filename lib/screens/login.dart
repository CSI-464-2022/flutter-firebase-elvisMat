import 'package:flutter/material.dart';
// import 'package:flutterapp/screens/';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:csi464/screens/change_pass.dart';

const p_color = Color(0xFF219653);

class Login extends StatefulWidget {
  //const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              // margin: EdgeInsets.only(bottom: 80),
              margin: EdgeInsets.only(top: 100, bottom: 40, left: 40, right: 40),
              child: SvgPicture.asset(
                'img/login.svg',
                width: 320,
                height: 192,
              ),
              // Image.asset('img/login.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
              child: Card(
                child: Column(
                  children: [
                    // ButtonBar()
                    Container(
                      // height: 48,

                      color: p_color,
                      child: TabBar(
                        indicatorColor: Colors.white,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white54,
                        labelPadding: EdgeInsets.only(top: 15, bottom: 15),
                        controller: _tabController,
                        tabs: [
                          Text("Login"),
                          Text("Register"),
                        ],
                      ),
                    ),
                    Container(
                      // width: double.maxFinite,
                      // transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                      constraints: BoxConstraints.loose(Size(double.maxFinite, 340)),
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(
                            height: 260,
                            padding: EdgeInsets.only(left: 12, right: 12),
                            child: Column(
                              children: [
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
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: ButtonBar(
                                    // buttonPadding: EdgeInsets.only(bottom: 24),
                                    alignment: MainAxisAlignment.start,
                                    children: [
                                      RaisedButton(
                                        color: p_color,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          // Perform some action
                                        },
                                        child: Text("LOGIN"),
                                      ),
                                      FlatButton(
                                        textColor: p_color,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ChangePassword(),
                                            ),
                                          );
                                        },
                                        child: const Text('FORGOT PASSWORD'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 320,
                            padding: EdgeInsets.only(left: 12, right: 12),
                            child: Column(
                              children: [
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
                                ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    RaisedButton(
                                      color: p_color,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: Text("REGISTER"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                  ], // padding: EdgeInsets.only(left: 18, right: 18),
                ),
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
