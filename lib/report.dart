import 'package:flutter/material.dart';
import 'package:whaleshark/login.dart';
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
        backgroundColor: Color.fromARGB(255, 241, 243, 245),
        title: Row(
          children: [
            Text(
              "Report",
              style: TextStyle(
                  color: Color.fromARGB(255, 41, 86, 211),
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset("assets/water2.jpg"),
            SizedBox(
              
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Container(
                      width: 150,
                      color: Color.fromARGB(255, 77, 201, 220),
                      child: Center(
                          child: InkWell(
                        child: Image.asset(
                          "assets/whale.png",
                          width: 200,
                          height: 100,
                        ),
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
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Container(
                      width: 150,
                      color: Color.fromARGB(255, 77, 201, 220),
                      child: Center(
                          child: InkWell(
                        child: Image.asset(
                          "assets/clownfish-r.png",
                          width: 100,
                          height: 100,
                        ),
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
                    ),
                  ),
                ),
              ],
            ),
            check == false
                ? SizedBox.shrink()
                : Column(
                    children: [
                      MaterialButton(
                          child: Text(
                            "In net",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.black,
                          onPressed: () {}),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        child: Text(
                          "Natural water",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                      )
                    ],
                  ),
          ]),
        ),
      ),
    );
  }
}
