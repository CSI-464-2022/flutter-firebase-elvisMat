import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:as1/screens/change_pass.dart';
import 'package:csi464/screens/login.dart';

const p_color = Color(0xFF219653);
const double divide = .25;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 24),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70, left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Elliot Kgage",
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 57, bottom: 40, left: 40, right: 0),
                  transform: Matrix4.translationValues(120, 0.0, 0.0),
                  // transform: ,
                  child: SvgPicture.asset(
                    'img/doc.svg',
                    width: 328,
                    height: 237,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 0, left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 24),
                    child: Text(
                      "What do you need?",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF6FCF97),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              // color:
                            ),
                            width: width * divide,
                            height: width * divide,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                Text(
                                  "Profile",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF56CCF2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            // color:
                          ),
                          width: width * divide,
                          height: width * divide,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.biotech),
                              Text(
                                "Testing",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBB6BD9),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            // color:
                          ),
                          width: width * divide,
                          height: width * divide,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.help_center_outlined),
                              Text(
                                "Info",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 24),
                    height: width * divide,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color(0xFFF2C94C),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: width * .4,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Color(0xFF56CCF2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.mark_chat_unread_outlined),
                              Text(
                                "Chat",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: width * .4,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Color(0xFF6FCF97),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.biotech),
                              Text(
                                "Testing",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(top: 20, right: 24, bottom: 30),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
