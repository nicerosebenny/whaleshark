import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

enum user { female, male, other }

class _RegisterState extends State<Register> {
  user _gender = user.female;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Registration"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: ("Name:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: ("Phone Number:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: ("E-mail id:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: ("Address:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: ("Date Of Birth:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),




                  
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: ("Enter password:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
