import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Icon(Icons.arrow_back_ios),
              Text(
                "Report",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 104, 177, 241),
        body: Container(
          child: Column(
            children: [
              Image.asset(),
            ],
          ),
        ));
  }
}
