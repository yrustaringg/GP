import 'package:flutter/material.dart';
import 'package:flutter_application_1/AddPatient.dart';
// ignore: depend_on_referenced_packages
import '/core/colors.dart';
import '/core/space.dart';
import '/core/text_style.dart';
import '/data/demo.dart';

import '/widget/main_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: blackBG,
            child: Image.asset(
              "Flutter-Login-Page-UI-master\Flutter-Login-Page-UI-master\assets\images\patient.png",
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'TheraSense',
                        style: headline,
                      ),
                    ]),
                  ),
                  SpaceVH(height: 20.0),
                  Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  Mainbutton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => AddPatient()));
                    },
                    btnColor: Color.fromARGB(255, 24, 98, 87),
                    text: 'Get Started',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
