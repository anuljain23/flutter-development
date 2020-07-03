import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/anul.jpg'),
              ),
              Text(
                'Anul Jain',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Indie Flower',
                  fontSize: 55.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER | WEB DEVELOPER | MACHINE LEARNING ENGINEER',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.white70,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0,
                    vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey[900],
                    size: 25.0,
                  ),
                  title: Text(
                    '+91 88179-50836',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro'
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0,
                    vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey[900],
                    size: 25.0,
                  ),
                  title: Text(
                    'anuljain23@gmail.com',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro'
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
