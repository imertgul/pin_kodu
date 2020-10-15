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
                      child: Text("Bir daha hesapla")),
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
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              Text(
                'Toplam: ' + myPinCode[8].toString(),
                style: myStyle20,
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _buildOtherMeaning(0, 'Kişilik'),
                    _buildOtherMeaning(1, 'Sosyal Bilinç'),
                    _buildOtherMeaning(2, 'Küresel Bilinç'),
                    _buildOtherMeaning(3, 'Yaşam Döngüsü'),
                    _buildOtherMeaning(4, 'Hayat Dersanesi'),
                    _buildOtherMeaning(5, 'İçsel Benlik'),
                    _buildOtherMeaning(6, 'İçsel Çocuk'),
                    _buildOtherMeaning(7, 'Ruh Duygusu'),
                    _buildOtherMeaning(8, 'Yaşam'),
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

Widget _buildOtherMeaning(index, title) {
  String myTitle = title + ': ' + myPinCode[index].toString() + ' rakamı';

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
    child: Column(
      children: [
        Text(
          myTitle,
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
