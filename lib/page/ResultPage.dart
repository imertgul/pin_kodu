import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    for (var i = 0; i < myPinCode.length; i++) {
      if (myPinCode[i] == 0) myPinCode[i] += 9;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                myBirthdate[0].toString() +
                    myBirthdate[1].toString() +
                    '.' +
                    myBirthdate[2].toString() +
                    myBirthdate[3].toString() +
                    '.' +
                    myBirthdate[4].toString() +
                    myBirthdate[5].toString() +
                    myBirthdate[6].toString() +
                    myBirthdate[7].toString(),
                style: myStyle20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pin kodunuz',
                  style: myStyle20,
                ),
              ),
              SizedBox(height: 30),
              Text(
                myPinCode[0].toString() +
                    '    ' +
                    myPinCode[1].toString() +
                    '    ' +
                    myPinCode[2].toString() +
                    '    ' +
                    myPinCode[3].toString() +
                    '    ' +
                    myPinCode[4].toString(),
                style: myStyle25,
              ),
              Text(
                myPinCode[5].toString() + '    ' + myPinCode[6].toString(),
                style: myStyle25,
              ),
              Text(
                myPinCode[7].toString(),
                style: myStyle25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
