import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

// ignore: camel_case_types
enum user { female, male, other }

class _RegisterState extends State<Register> {
  // ignore: prefer_final_fields
  user? _gender = user.female;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("Registration"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                children: [
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: ("Name:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: ("Phone Number:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: ("E-mail id:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: ("Address:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: ("Date Of Birth:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.lightBlue,
                    title: const Text("Female"),
                    leading: Radio(
                      value: user.female,
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          // _gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.lightBlue,
                    title: const Text("Male"),
                    leading: Radio(
                      value: user.male,
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          // _gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.lightBlue,
                    title: const Text("Others"),
                    leading: Radio(
                      value: user.other,
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          // _gender = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    style: TextStyle(color: Colors.black),
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
