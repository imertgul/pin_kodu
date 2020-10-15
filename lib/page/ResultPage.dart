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
              buildBirthdayLabel(myBirthdate),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pin kodunuz',
                  style: myStyle20,
                ),
              ),
              SizedBox(height: 10),
              buildResultTriangle(myPinCode),
              SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    buildMeanings(myBullShits, myPinCode, 0, 'Kişilik'),
                    buildMeanings(myBullShits, myPinCode, 1, 'Sosyal Bilinç'),
                    buildMeanings(myBullShits, myPinCode, 2, 'Küresel Bilinç'),
                    buildMeanings(myBullShits, myPinCode, 3, 'Yaşam Döngüsü'),
                    buildMeanings(myBullShits, myPinCode, 4, 'Hayat Dersanesi'),
                    buildMeanings(myBullShits, myPinCode, 5, 'İçsel Benlik'),
                    buildMeanings(myBullShits, myPinCode, 6, 'İçsel Çocuk'),
                    buildMeanings(myBullShits, myPinCode, 7, 'Ruh Duygusu'),
                    buildMeanings(myBullShits, myPinCode, 8, 'Yaşam'),
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
