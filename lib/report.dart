import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool? check = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: const [
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
        backgroundColor: const Color.fromARGB(255, 104, 177, 241),
        body: Column(
          children: [
            Row(
              children: [
                Center(
                    child: InkWell(
                  child: Image.asset("assets/whale.png",width: 200,),
                  onTap: () {
                    const Text(
                      "In net",
                      style: TextStyle(color: Colors.black),
                    );
                    setState(() {
                      check == false
                          ? check = true
                          : check == true
                              ? check = false
                              : false;
                    });
                  },
                )),
                Center(
                    child: InkWell(
                  child: Image.asset("assets/clownfish-r.jpg",width: 200,height: 100,),
                  onTap: () {
                    setState(() {
                      check == false
                          ? check = true
                          : check == true
                              ? check = false
                              : false;
                    });
                  },
                )),
              ],
            ),
            check == false
                ? const SizedBox.shrink()
                : Container(
                    height: 40,
                    color: Colors.red,
                  )
          ],
        ));
  }
}
