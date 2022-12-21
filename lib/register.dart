// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:whaleshark/data/bloc/signupbloc.dart';
import 'package:whaleshark/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

// ignore: camel_case_types
enum user { female, male, other }

enum role { admin, users }

class _RegisterState extends State<Register> {
  // ignore: prefer_final_fields
  user? _gender = user.female;
  role? _roles = role.users;
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final _role = TextEditingController();
  final re_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.blue),
        ),
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
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    controller: name,
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
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    controller: phone,
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
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    controller: email,
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
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
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
                  SizedBox(
                    height: 12,
                  ),
                  // const TextField(
                  //   style: TextStyle(color: Colors.black),
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     labelText: ("Date Of Birth:"),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide:
                  //           BorderSide(width: 1.5, color: Colors.lightBlue),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 12,
                  // ),
                  Column(
                    children: [
                      // Text(
                      //   Controller :
                      //   "Choose Role",
                      //   style: TextStyle(fontSize: 16),
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 10,
                            child: Radio<role>(
                              value: role.admin,
                              groupValue: _roles,
                              onChanged: (role? value) {
                                setState(() {
                                  _roles = value;
                                  print(value);
                                });
                              },
                            ),
                          ),
                          Text("Admin"),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 10,
                            child: Radio<role>(
                              value: role.users,
                              groupValue: _roles,
                              onChanged: (role? value) {
                                setState(() {
                                  _roles = value;
                                  print(value);
                                });
                              },
                            ),
                          ),
                          Text("Users"),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              // Column(
              //   children: [
              //     Text(
              //       "Choose Gender:",
              //       style: TextStyle(fontSize: 16),
              //     ),
              //     Row(
              //       children: [
              //         SizedBox(
              //           height: 30,
              //         ),
              //         Container(
              //           height: 10,
              //           child: Radio<user>(
              //             value: user.female,
              //             groupValue: _gender,
              //             onChanged: (user? value) {
              //               setState(() {
              //                 _gender = value;
              //                 print(value);
              //               });
              //             },
              //           ),
              //         ),
              //         Text("Female"),
              //         SizedBox(
              //           height: 30,
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         SizedBox(height: 30),
              //         Container(
              //           height: 10,
              //           child: Radio<user>(
              //             value: user.male,
              //             groupValue: _gender,
              //             onChanged: (user? value) {
              //               setState(() {
              //                 _gender = value;
              //                 print(value);
              //               });
              //             },
              //           ),
              //         ),
              //         Text("Male"),
              //         SizedBox(
              //           height: 30,
              //         ),
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         SizedBox(height: 30),
              //         Container(
              //           height: 10,
              //           child: Radio<user>(
              //             value: user.other,
              //             groupValue: _gender,
              //             onChanged: (user? value) {
              //               setState(() {
              //                 _gender = value;
              //                 print(value);
              //               });
              //             },
              //           ),
              //         ),
              //         Text("Others"),
              //         SizedBox(
              //           height: 30,
              //         ),
              //       ],
              //     ),
              //   ],
              // ),

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
            ),
            SizedBox(height: 15),
            TextField(
              controller: password,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: ("Enter a password:"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Colors.lightBlue),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
           
              controller: re_password,
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
              // child: Text("Sumbit"),
              onPressed: () {
                if (email.text.isEmpty) {
                  Fluttertoast.showToast(msg: "Please Enter Email");
                } else if (phone.text.isEmpty) {
                  Fluttertoast.showToast(msg: "Please enter phone");
                } else if (password.text.isEmpty) {
                  Fluttertoast.showToast(msg: "Please enter  password");
                } else if (name.text.isEmpty) {
                  Fluttertoast.showToast(msg: "Please enter name");
                } else if (password.text != re_password.text) {
                  Fluttertoast.showToast(msg: "Please correct paasword");
                } else {
                  BlocProvider.of<SignupBloc>(context).add(GetSignupEvent(
                      email: email.text.toString(),
                      name: name.text.toString(),
                      phone: phone.text.toString(),
                      password: phone.text.toString()));
                }

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const Login(),
                //   ),
                // );
              },
              child: BlocConsumer<SignupBloc, SignupStates>(
                  listener: (context, state) {
                if (state is SignupError) {
                  Fluttertoast.showToast(msg: state.error.toString());
                }
                if (state is SignupSuccess) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }
              }, builder: (context, state) {
                if (state is Loading) {
                  return CircularProgressIndicator();
                } else {
                  return Text(
                    "SUBMIT",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  );
                }
              }),
            )
          ],
        ),
      ),
      //],
    );
    // ),
    //);
  }
}
