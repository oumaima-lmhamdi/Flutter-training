import 'package:age_calculator_app/calculAge.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var passwordVisibility = true;
  var bp = Color(0xff1008A8);
  var p = Color(0xffe04878);
  var lb = Color(0x2098a0e8);
  var lp = Color(0x208868b0);
  var pa = Colors.pinkAccent;
  var w = Colors.white;
  var b = Colors.black;
  var myController = TextEditingController();
  var age;
  var str = "";

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: bp,
              title: Text(
                "CalculAge",
                style: TextStyle(
                  color: w,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Container(
              height: double.infinity,
              color: w,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Container(
                      // margin: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: lb,
                          filled: true,
                          labelText: "Birth Year",
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: bp,
                          ),
                          hintText: "Enter your birth year",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: pa,
                            fontWeight: FontWeight.normal,
                          ),
                          prefixIcon: Icon(
                            Icons.calendar_today_outlined,
                            color: bp,
                          ),
                        ),
                        controller: myController,
                        style: TextStyle(
                          color: bp,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Text(
                        str,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: bp,
                        ),
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith((states) => pa),
                    ),
                    onPressed: () {
                      setState(() {
                        AgeCalculator(int.parse(myController.text));
                        age = AgeCalculator.age;
                        str = "You are $age years old";
                      });
                    },
                    child: Text(
                      "Get Age",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: b,
          onPressed: () {
            setState(() {
              b = b == Colors.black ? Colors.white : Colors.black;
              w = w == Colors.white ? Colors.black : Colors.white;
              bp = w == Colors.white ? Color(0xff1008A8) : Colors.white;
            });
          },
        ),
      ),
    );
  }
}
