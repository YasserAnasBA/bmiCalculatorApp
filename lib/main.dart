import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color statusColor = Colors.white;
  Color green = Color.fromARGB(255, 0, 255, 0);
  Color yellow = Colors.yellow;
  Color orange = Colors.orange;
  Color red = Colors.red;
  Color blue = Colors.blue;

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController bmiController = TextEditingController();

  bool femaleSelected = false;
  bool maleSelected = false;

  String statusString = '';
  String gender = '';
  String bmiString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 0, 180, 255),
                Color.fromARGB(255, 182, 251, 189)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Progress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 80,
                                    child: TextField(
                                      controller: weightController,
                                      maxLines: 1,
                                      minLines: 1,
                                      maxLength: 3,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          counter: Container(),
                                          contentPadding: EdgeInsets.zero,
                                          border: InputBorder.none,
                                          hintText: '0.0',
                                          hintStyle: TextStyle(
                                              fontSize: 35,
                                              color:
                                                  Colors.cyan.withOpacity(0.5),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Text('/KG',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35, bottom: 15),
                                child: Text(
                                  'Weight',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 70,
                                    child: TextField(
                                      controller: heightController,
                                      maxLines: 1,
                                      minLines: 1,
                                      maxLength: 3,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          counter: Container(),
                                          contentPadding: EdgeInsets.zero,
                                          border: InputBorder.none,
                                          hintText: '0.0',
                                          hintStyle: TextStyle(
                                              fontSize: 35,
                                              color:
                                                  Colors.cyan.withOpacity(0.5),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Text('/CM',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35, bottom: 15),
                                child: Text(
                                  'Height',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 70,
                                    child: TextField(
                                      controller: ageController,
                                      maxLines: 1,
                                      minLines: 1,
                                      maxLength: 3,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          counter: Container(),
                                          contentPadding: EdgeInsets.zero,
                                          border: InputBorder.none,
                                          hintText: '0.0',
                                          hintStyle: TextStyle(
                                              fontSize: 35,
                                              color:
                                                  Colors.cyan.withOpacity(0.5),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                  Text('/YRS',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  'Age',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 120,
                                    child: TextField(
                                      enabled: false,
                                      controller: bmiController
                                        ..text = bmiString,
                                      maxLines: 1,
                                      minLines: 1,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          border: InputBorder.none,
                                          hintText: '0.0',
                                          hintStyle: TextStyle(
                                              fontSize: 35,
                                              color:
                                                  Colors.cyan.withOpacity(0.5),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Text(
                                  'BMI',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              gender = 'female';
                              femaleSelected = true;
                              maleSelected = false;
                              setState(() {});
                            },
                            child: Card(
                              color: femaleSelected == true
                                  ? Colors.blueGrey
                                  : Colors.white,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Image(
                                      width: 80,
                                      height: 80,
                                      image:
                                          AssetImage('lib/images/female.png')),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Female',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              gender = 'male';
                              maleSelected = true;
                              femaleSelected = false;
                              setState(() {});
                            },
                            child: Card(
                              color: maleSelected == true
                                  ? Colors.blueGrey
                                  : Colors.white,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.all(15),
                                child: Column(children: [
                                  Image(
                                      width: 80,
                                      height: 80,
                                      image: AssetImage('lib/images/male.png')),
                                  Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Male',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: statusColor,
                                  borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width - 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '$statusString',
                                      style: TextStyle(
                                          color: statusColor, fontSize: 28),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 0, 156, 255),
                            Color.fromARGB(255, 0, 246, 255),
                            Color.fromARGB(255, 0, 156, 255)
                          ])),
                      width: MediaQuery.of(context).size.width - 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: Colors.transparent),
                          onPressed: () {
                            String weight, height, age;
                            weight = weightController.text.toString();
                            height = heightController.text.toString();
                            age = ageController.text.toString();

                            if (weight.isEmpty ||
                                height.isEmpty ||
                                age.isEmpty ||
                                gender.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: 'Please Fill All the Fields');
                            } else {
                              if (femaleSelected == false &&
                                  maleSelected == false) {
                                Fluttertoast.showToast(
                                    msg: 'Please Choose Your Gender');
                              } else {
                                _calculate(weight, height, age, gender);
                                setState(() {});
                              }
                            }
                          },
                          child: Text(
                            'Calculate',
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          )),
                    ),
                    Container(
                      height: 70,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 255, 0, 0),
                            Color.fromARGB(255, 252, 88, 88),
                            Color.fromARGB(255, 255, 0, 0),
                          ])),
                      width: MediaQuery.of(context).size.width - 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: Colors.transparent),
                          onPressed: () {
                            statusColor = Colors.white;
                            gender = '';
                            bmiString = '';
                            femaleSelected = false;
                            maleSelected = false;
                            weightController.text = '';
                            heightController.text = '';
                            ageController.text = '';
                            setState(() {});
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _calculate(String w, String h, String a, String g) {
    double weight = double.parse(w);
    double height = double.parse(h);
    int age = int.parse(a);
    height = height / 100;
    height = height * height;
    double bmi = weight / height;
    String mi = bmi.toStringAsFixed(2);
    bmi = double.parse(mi);
    print(bmi.toString());
    if (age > 20) {
      if (bmi < 18) {
        statusString = 'Underweight';
        bmiString = bmi.toString();
        statusColor = yellow;
        return;
      } else if (bmi < 18.5) {
        statusString = 'Thin for Height';
        bmiString = bmi.toString();
        statusColor = blue;
        return;
      } else if (bmi < 25) {
        statusString = 'Healthy Weight';
        bmiString = bmi.toString();
        statusColor = green;
        return;
      } else if (bmi < 30) {
        statusString = 'Overweight';
        bmiString = bmi.toString();
        statusColor = orange;
        return;
      } else {
        statusString = 'Obesity';
        bmiString = bmi.toString();
        statusColor = red;
        return;
      }
    } else {
      if (gender == 'male') {
        switch (age) {
          case 2:
            if (bmi < 14.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 18.2) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 19.4) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 3:
            if (bmi < 14.6) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17.4) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18.3) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 4:
            if (bmi < 14) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 5:
            if (bmi < 13.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 16.8) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 17.9) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 6:
            if (bmi < 13.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18.6) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 7:
            if (bmi < 13.7) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17.4) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 19.1) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 8:
            if (bmi < 13.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17.9) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 20) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 9:
            if (bmi < 14) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 18.6) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 21) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 10:
            if (bmi < 14.2) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 19.5) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 22) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 11:
            if (bmi < 14.6) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 22) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 23.1) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 12:
            if (bmi < 15) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 21) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 24.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 13:
            if (bmi < 15.4) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 21.8) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 25.1) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 14:
            if (bmi < 16) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 22.6) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 26) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 15:
            if (bmi < 16.5) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 23.4) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 26.8) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 16:
            if (bmi < 17.1) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 24.2) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 27.5) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;
              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 17:
            if (bmi < 17.6) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 24.9) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 28.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 18:
            if (bmi < 18.2) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 25.6) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 28.9) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 19:
            if (bmi < 18.9) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 26.3) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 29.6) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 20:
            if (bmi < 19.1) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 27) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 30.6) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
        }
      } else {
        switch (age) {
          case 2:
            if (bmi < 14.4) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 18) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 19) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 3:
            if (bmi < 14) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17.2) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 4:
            if (bmi < 13.7) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 16.8) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 5:
            if (bmi < 13.5) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 16.8) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 6:
            if (bmi < 13.4) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17.1) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 18.8) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 7:
            if (bmi < 13.4) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 17.6) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 19.6) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 8:
            if (bmi < 13.5) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 18.3) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 20.6) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 9:
            if (bmi < 13.7) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 19.1) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 21.8) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 10:
            if (bmi < 14) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 20) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 23) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 11:
            if (bmi < 14.4) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 20.8) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 24) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 12:
            if (bmi < 14.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 21.7) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 25.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 13:
            if (bmi < 15.3) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 22.5) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 26.3) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 14:
            if (bmi < 15.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 23.3) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 27.2) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 15:
            if (bmi < 16.3) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 24) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 28) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 16:
            if (bmi < 16.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 24.7) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 28.9) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;
              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 17:
            if (bmi < 17.2) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 25.2) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 29.5) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 18:
            if (bmi < 17.5) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 25.5) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 30.3) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 19:
            if (bmi < 17.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 26.1) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 31) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
          case 20:
            if (bmi < 17.8) {
              statusString = 'Underweight';
              bmiString = bmi.toString();
              statusColor = yellow;
              return;
            } else if (bmi < 26.5) {
              statusString = 'Healthy Weight';
              bmiString = bmi.toString();
              statusColor = green;

              return;
            } else if (bmi < 31.7) {
              statusString = 'Over Weight';
              bmiString = bmi.toString();
              statusColor = orange;

              return;
            } else {
              statusString = 'Obese';
              bmiString = bmi.toString();
              statusColor = red;
              return;
            }
        }
      }
    }
  }
}
