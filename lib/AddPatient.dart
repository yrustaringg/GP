import 'package:flutter/material.dart';
import 'package:flutter_application_1/background.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({Key? key}) : super(key: key);

  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  bool isMaleSelected = true;
  bool isFemaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height:
                  MediaQuery.of(context).size.height / 2, // Half of the screen
              color: Color.fromRGBO(24, 98, 87, 1),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter, // Align the form to the bottom
            child: FractionallySizedBox(
              heightFactor:
                  0.6, // Adjust this value as needed to control the form height
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          'Add a patient',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Patient Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(
                                  0xFF186257), // Blue border in hex ( i will fix it)
                            ),
                          ),
                          prefixIcon: Icon(Icons.person), // Person icon
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'ID',
                          hintText: 'XXXXXXXXXX',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(
                                  0xFF186257), // Blue border in hex ( i will fix it)
                            ),
                          ),
                          prefixIcon: Icon(Icons.person), // Person icon
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          hintText: '05XXXXXXXX',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(
                                  0xFF186257), // Blue border in hex ( i will fix it)
                            ),
                          ),
                          prefixIcon: Icon(Icons.phone), // Person icon
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Age',
                          hintText: '00',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFF186257), // Blue border in hex
                            ),
                          ),
                          prefixIcon:
                              Icon(Icons.calendar_today), // Calendar icon
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email Adress',
                          hintText: 'example@example.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color(0xFF186257), // Blue border in hex
                            ),
                          ),
                          prefixIcon: Icon(Icons.email), // Email icon
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Choose your gender'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              if (isMaleSelected) Text('Male'),
                              Switch(
                                value: isMaleSelected,
                                onChanged: (value) {
                                  setState(() {
                                    isMaleSelected = value;
                                    isFemaleSelected = !value;
                                  });
                                },
                              ),
                              if (isFemaleSelected) Text('Female'),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement sign-up logic here
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF186257)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        ),
                        child: Text('Save'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Back arrow icon
          Positioned(
            top: 20, // Adjust the position as needed
            left: 10, // Adjust the position as needed
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 50,
                color: Color(0xFFFFFFFF),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
