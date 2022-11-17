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
    body:SingleChildScrollView(
      child: Container(
        child:Padding(padding:EdgeInsets.all(14.0),
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("LOGIN HERE",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: "barrio",),),
        SizedBox(height: 150,),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_circle_rounded),
            label: Text("username",style:TextStyle(color: Colors.black,fontSize: 10),
            )
          ),
          
        ),
        SizedBox(height: 10,),
        TextField(
          decoration:InputDecoration(
            prefix: Icon(Icons.lock),
            label: Text("password",style: TextStyle(color: Colors.black,fontSize: 10),)

          ) ,
        )],
        )
       ),
    )
    
    ));
  }
}
