import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignUpPage.dart';
import 'MaterialStateWidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Safe area excludes clock wifi region
      body: SafeArea(
        //Container for safe area
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          //Main column child
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'I\'m Abhirama from Sringeri all I do is code, code and code.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/welcome.png'),
                  ),
                ),
              ),
              Column(
                children: [
                  MaterialButtonWidget(
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      buttonText: 'Log In'),
                  SizedBox(
                    height: 15.0,
                  ),
                  MaterialButtonWidget(
                    textColor: Colors.white,
                    buttonColor: Color(0xFF0095FF),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpPage();
                      }));
                    },
                    buttonText: 'Sign Up',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
