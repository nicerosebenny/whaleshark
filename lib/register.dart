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
  user? _gender = user.female;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Registration"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Scrollbar(
                thumbVisibility: false,
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("Name:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("Phone Number:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("E-mail id:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("Address:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("Date Of Birth:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                  children:[Text("Choose Gender:",style: TextStyle(fontSize: 16),),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text("Female"),
                    leading: Radio(
                      value: user.female,
                      groupValue: _gender,
                      onChanged: (user? value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text("Male"),
                    leading: Radio(
                      value: user.male,
                      groupValue: _gender,
                      onChanged: (user? value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: const Text("Others"),
                    leading: Radio(
                      value: user.other,
                      groupValue: _gender,
                      onChanged: (user? value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                  ),
                  ],
                  ),
                  SizedBox(height: 15),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("Enter a password:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),

                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled:true,
                      fillColor: Colors.white,
                      labelText: ("Re-enter the password:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
        );
  }
}
