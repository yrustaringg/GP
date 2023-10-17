import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AddPatient.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyAyaW86iJF-2Zh0n0aukpgzK7Z9ff5jaPs",
    appId: "Y1:621591419878:android:401900529264c1499c1427",
    messagingSenderId: "621591419878",
    projectId: "therasense-391bb",
  ));

  runApp(const MyApp() as Widget);
}

class MyApp {
  const MyApp();
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 98, 87),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 74, 74, 74),
                    size: 35.0,
                  ),
                  label: Text('  Add Patient',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPatient()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.fromLTRB(20, 20, 230, 20),
                    textStyle: TextStyle(fontSize: 25),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.feedback,
                    color: Color.fromARGB(255, 74, 74, 74),
                    size: 35.0,
                  ),
                  label: Text('  about us',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromRGBO(0, 0, 0, 1),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.fromLTRB(20, 20, 255, 20),
                    textStyle: TextStyle(color: Colors.black, fontSize: 25),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.phone_in_talk,
                    color: Color.fromARGB(255, 74, 74, 74),
                    size: 35.0,
                  ),
                  label: Text('  contact us',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color.fromRGBO(0, 0, 0, 1),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.fromLTRB(20, 20, 230, 20),
                    textStyle: TextStyle(color: Colors.black, fontSize: 25),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35.0),
              TextButton.icon(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 37.0,
                  color: Color.fromARGB(255, 200, 200, 200),
                ),
                label: Text(
                  'Log out',
                  style: TextStyle(
                      color: Color.fromARGB(255, 200, 200, 200),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )
        // bottomNavigationBar: NavBar(),
        );
  }
}
