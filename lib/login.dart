import 'package:flutter/material.dart';
import 'package:whaleshark/register.dart';
import 'package:whaleshark/report.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var singleChildScrollView = SingleChildScrollView(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child:Padding(padding:const EdgeInsets.all(30.0),
        child:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [const Text("LOGIN HERE",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: "barrio",),),
        const SizedBox(height: 150,),
        const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_circle_rounded),
            label: Text("username",style:TextStyle(color: Colors.black,fontSize: 10),
            )
          ),
          
        ),
        const SizedBox(height: 10,),
        const TextField(
          decoration:InputDecoration(
            prefixIcon: Icon(Icons.lock),
            label: Text("password",style: TextStyle(color: Colors.black,fontSize: 10),)

          ) ,
        ),
        const SizedBox(height: 70,),
        MaterialButton(
          color: Colors.white,height: 50,textColor:Colors.black,
          child: const Text("Login"),
          
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Report(),),);}
        
        ),
        const SizedBox(height:20),
        const Text("Forgot  Password?",style:TextStyle(color:Colors.black),),
        // ignore: prefer_const_constructors
        SizedBox(height: 40,),
        Row(
          children: [
            SizedBox(width: 50,),
            Container(
             child: const Text("Dont have an account?",style:TextStyle(color:Colors.black),),
            
            ),

            InkWell(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SignUp",style:TextStyle(color:Colors.black,   decoration: TextDecoration.underline,),),
            ),
            onTap: (){

              Navigator.push(context,MaterialPageRoute(builder:(context)=> const Register(),));

              
            },
            
            
            
            ),
            
            
            
          ],
        )]
        
        
      
        )
       ),
    )
    
    );
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      
      appBar: AppBar(backgroundColor: Colors.white,title:Padding(padding: const EdgeInsets.all(8.0),
      child: Row(children: const [SizedBox(height: 30,),Text("WHALESHARK",style:TextStyle(color: Colors.blue)),]),)),
    body:singleChildScrollView);
  }
}
