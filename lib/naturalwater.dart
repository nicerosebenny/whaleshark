

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whaleshark/login.dart';

class Naturalwater extends StatefulWidget {
  const Naturalwater({super.key});

  @override
  State<Naturalwater> createState() => _NaturalwaterState();
}
enum fish { femalefish, malefish, dontknow }
class _NaturalwaterState extends State<Naturalwater> {
  fish? _fishgender = fish.dontknow;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Natural Water",style: TextStyle(color: Colors.blue),),
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
// files.isEmpty
//               ? const SizedBox.shrink()
//               : SizedBox(
//                   height: MediaQuery.of(context).size.height / 5,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: files.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return InkWell(
//                           child: Row(
//                             children: [
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               // ClipRRect(
//                               //     borderRadius: BorderRadius.circular(10.0),
//                               //     child: Image.file(
//                               //       files[index],
//                               //       height: 150,
//                               //       width: 80,
//                               //       fit: BoxFit.contain,
//                               //     )),
//                             ],
//                           ),
//                           onTap: () async {});
//                     },
//                   ),
//                 ),
              //      Container(
              //       child:Text("Choose data:"),
              //      files.isEmpty
              // ? const SizedBox.shrink()
              // : SizedBox(
              //     height: MediaQuery.of(context).size.height / 5,
              //     child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: files.length,
              //       itemBuilder: (BuildContext context, int index) {
              //         return InkWell(
              //             child: Row(
              //               children: [
              //                 const SizedBox(
              //                   width: 10,
              //                 ),
              //                 ClipRRect(
              //                     borderRadius: BorderRadius.circular(10.0),
              //                     child: Image.file(
              //                       files[index],
              //                       height: 150,
              //                       width: 80,
              //                       fit: BoxFit.contain,
              //                     )),
              //               ],
              //             ),
              //             onTap: () async {});
              //       },
              //     ),
              //   ),
              //      ),
                   


                   SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 150,),
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
                          }),
              ],
            )      
          ],
        ),
      )
      ), 
    );
  }

  File? imageFile;
  File? videoFile;

  void _imgFromCamera() async {
    var pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    // if (pickedFile != null) {
    //   var dir = await getTemporaryDirectory();

    //   var cfile = await compressFile(File(pickedFile.path));

    //   File image = await File('${dir.path}/${pickedFile.path.split('/').last}')
    //       .writeAsBytes(cfile!);
    //   imageFile = image;
    //   files.add(imageFile!);
    //   imagepath = image.path;

    //   setState(() {});
    // }

    // files.add(File(image!.path));
    // setState(() {});
    // imagepath = image.path;

    //_cropImage(image!.path);
  }








}