import 'package:flutter/material.dart';
import 'package:pin_kodu/utilities/constant.dart';

class ResultCouplePage extends StatefulWidget {
  @override
  _ResultCouplePageState createState() => _ResultCouplePageState();
}

class _ResultCouplePageState extends State<ResultCouplePage> {
  @override
  void initState() {
    for (var i = 0; i < myCouplePinCode.length; i++) {
      if (myCouplePinCode[i] == 0) myCouplePinCode[i] += 9;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBirthdayLabel(myLadydate),
                buildBirthdayLabel(myMandate),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'İlişki Pin kodunuz',
                style: myStyle20,
              ),
            ),
            buildResultTriangle(myCouplePinCode),
            SizedBox(height: 30),
            Expanded(
                child: ListView(
              children: <Widget>[
                buildMeanings(myCoupleBullShits, myCouplePinCode, 0, 'Kişilik'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 1, 'Sosyal Bilinç'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 2, 'Küresel Bilinç'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 3, 'Yaşam Döngüsü'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 4, 'Hayat Dersanesi'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 5, 'İçsel Benlik'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 6, 'İçsel Çocuk'),
                buildMeanings(
                    myCoupleBullShits, myCouplePinCode, 7, 'Ruh Duygusu'),
                buildMeanings(myCoupleBullShits, myCouplePinCode, 8, 'Yaşam'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
