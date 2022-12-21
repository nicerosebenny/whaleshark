import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class  Innet extends StatefulWidget {
  const Innet({Key? key}) : super(key: key);

  @override
  State<Innet> createState() => _InnetState();
}
enum fish { femalefish, malefish, dontknow }

class _InnetState extends State<Innet> {
    fish? _fishgender = fish.dontknow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("In Net Water",style: TextStyle(color: Colors.blue),),
      ),
     body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
            const TextField(
              style:TextStyle(color:Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: ("length of fish (approx):"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5,color: Colors.lightBlue),
                ),
              ),
                     ),
                     SizedBox(height: 12,),
                      Column(
                    children: [
                      Text(
                        "Choose the fish's gender:",
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        
                        children: [
                           SizedBox(height: 30,),
                          Container(
                        
                        height: 10,
                        child: Radio<fish>(
                          value: fish.femalefish,
                          groupValue: _fishgender,
                          onChanged: (fish? value) {
                            setState(() {
                              _fishgender = value;
                              print(value);
                            });
                          },
                        ),
                      ),Text("Female Fish"),
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
                        child: Radio<fish>(
                          value: fish.malefish,
                          groupValue: _fishgender,
                          onChanged: (fish? value) {
                            setState(() {
                              _fishgender = value;
                              print(value);
                            });
                          },
                        ),
                      ),
                      Text("Male Fish"),
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
                        child: Radio<fish>(
                          value: fish.dontknow,
                          groupValue: _fishgender,
                          onChanged: (fish? value) {
                            setState(() {
                              _fishgender = value;
                              print(value);
                            });
                          },
                        ),
                      ),
                      Text("Don't Know"),
                            SizedBox(
                            height: 30,
                              ),],
                      ),
                    ],
                  ),
            const TextField(
              style:TextStyle(color:Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: ("Boat Number:"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5,color: Colors.lightBlue),
                ),
              ),
                     ),
                     SizedBox(height: 12,),
            const TextField(
              style:TextStyle(color:Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: ("Boat Name:"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5,color: Colors.lightBlue),
                ),
              ),
                     ),
                     SizedBox(height: 12,),
            const TextField(
              style:TextStyle(color:Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: ("Boat Owner:"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5,color: Colors.lightBlue),
                ),
              ),
                     ),
                     SizedBox(height: 12,),
          const TextField(
            style:TextStyle(color:Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: ("Remarks:"),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.5,color: Colors.lightBlue),
              ),
            ),
                   ),
                   
          ],
        ),
      )
      ),
    );
    
  }
}