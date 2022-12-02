import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Naturalwater extends StatefulWidget {
  const Naturalwater({super.key});

  @override
  State<Naturalwater> createState() => _NaturalwaterState();
}

class _NaturalwaterState extends State<Naturalwater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Registration",style: TextStyle(color: Colors.blue),),
      ),
      
    );
  }
}