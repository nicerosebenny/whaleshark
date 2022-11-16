import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      
      appBar: AppBar(backgroundColor: Colors.white,title:Padding(padding: EdgeInsets.all(8.0),
      child: Row(children: [SizedBox(height: 30,),Text("WHALESHARK",style:TextStyle(color: Colors.blue)),]),)),
    
    
    );
  }
}
