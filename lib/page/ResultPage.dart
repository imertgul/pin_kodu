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
              Container(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Birdaha hesapla")),
                ),
              ),
              SizedBox(height: 20),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                    '   ' +
                        myPinCode[5].toString() +
                        '    ' +
                        myPinCode[6].toString(),
                    style: myStyle25,
                  ),
                  Text(
                    '      ' + myPinCode[7].toString(),
                    style: myStyle25,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _buildMeaning('Kişilik', 0),
                    _buildMeaning('Hayat Dersanesi', 4),
                    _buildMeaning('İçsel Benlik', 5),
                    _buildMeaning('İçsel Çocuk, Hayattaki Görevin', 6),
                    _buildMeaning('Ruh Duygusu', 7),
                    _buildOtherMeaning(0),
                    _buildOtherMeaning(1),
                    _buildOtherMeaning(2),
                    _buildOtherMeaning(3),
                    _buildOtherMeaning(4),
                    _buildOtherMeaning(5),
                    _buildOtherMeaning(6),
                    _buildOtherMeaning(7),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildMeaning(String title, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
    child: Column(
      children: [
        Text(
          title,
          style: myStyle15,
        ),
        Text(
          myBullShits[myPinCode[index]],
          style: myStyle12,
        ),
      ],
    ),
  );
}

int howMany(List<int> arr, int numb) {
  int count = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == numb) {
      count++;
    }
  }
  return count;
}
