import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 15.0,
                ),

                Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),

            Column(
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.grey[500],
                  ),
                ),
                
              ],
            ),

            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

