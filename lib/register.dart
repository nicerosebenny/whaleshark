// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:whaleshark/login.dart';

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
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Registration",style: TextStyle(color: Colors.blue),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                children: [
                  SizedBox(height: 12,),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("Name:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("Phone Number:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("E-mail id:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("Address:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  const TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("Date Of Birth:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Text(
                        "Choose Gender:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        
                        children: [
                           SizedBox(height: 30,),
                          Container(
                        
                        height: 10,
                        child: Radio<user>(
                          value: user.female,
                          groupValue: _gender,
                          onChanged: (user? value) {
                            setState(() {
                              _gender = value;
                              print(value);
                            });
                          },
                        ),
                      ),Text("Female"),
                            SizedBox(
                            height: 30,
                              ),
                        
                        ],
                      ),
                      Row(
                      children:[
                        
                      SizedBox(height: 30),
                      Container(
                        height: 10,
                        child: Radio<user>(
                          value: user.male,
                          groupValue: _gender,
                          onChanged: (user? value) {
                            setState(() {
                              _gender = value;
                              print(value);
                            });
                          },
                        ),
                      ),
                      Text("Male"),
                            SizedBox(
                            height: 30,
                              ),
                      ],
                      ),
                      Row(
                        children:[
                        SizedBox(height: 30),  
                      Container(
                        height: 10,
                        child: Radio<user>(
                          value: user.other,
                          groupValue: _gender,
                          onChanged: (user? value) {
                            setState(() {
                              _gender = value;
                              print(value);
                            });
                          },
                        ),
                      ),
                      Text("Others"),
                            SizedBox(
                            height: 30,
                              ),],
                      ),
                    ],
                  ),
                  
                  
                  //       child: RadioListTile<user>(
                  //         tileColor: Colors.white,
                  //         title: const Text("Female"),

                  //           value: user.female,
                  //           groupValue: _gender,
                  //           onChanged: (user? value) {
                  //             setState(() {
                  //               _gender = value;
                  //             });
                  //           },

                  //       ),
                  //     ),
                  //     Container(
                  //       height: 10,
                  //       child: RadioListTile<user>(
                  //         tileColor: Colors.white,
                  //         title: const Text("Male"),

                  //           value: user.male,
                  //           groupValue: _gender,
                  //           onChanged: (user? value) {
                  //             setState(() {
                  //               _gender = value;
                  //             });
                  //           },

                  //       ),
                  //     ),
                  //     Container(
                  //       height: 10,
                  //       child: RadioListTile<user>(
                  //         tileColor: Colors.white,
                  //         title: const Text("Others"),

                  //           value: user.other,
                  //           groupValue: _gender,
                  //           onChanged: (user? value) {
                  //             setState(() {
                  //               _gender = value;
                  //             });
                  //           },

                  //       ),
                  //     ),
                  //   ],
                  // ),

                  SizedBox(height: 15),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("Enter a password:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: ("Re-enter the password:"),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1.5, color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  MaterialButton(
                      color: Colors.white,
                      height: 40,
                      minWidth: 90,
                      textColor: Colors.black,
                      child: Text("Sumbit"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
