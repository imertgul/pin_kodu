import 'package:flutter/material.dart';
import 'package:pin_kodu/utilities/constant.dart';

class CouplePage extends StatefulWidget {
  final String title;

  CouplePage({Key key, @required this.title}) : super(key: key);
  @override
  _CouplePageState createState() => _CouplePageState();
}

class _CouplePageState extends State<CouplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: FlatButton(
                  onPressed: () => Navigator.pop(context), child: Text("Geri")),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                buildTitle(widget.title),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lütfen Doğum tarihlerinizi giriniz",
                    style: myStyle15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    buildInput(context, myLadydate, 0, myLadyController),
                    buildInput(context, myLadydate, 1, myLadyController),
                    SizedBox(width: 5),
                    buildInput(context, myLadydate, 2, myLadyController),
                    buildInput(context, myLadydate, 3, myLadyController),
                    SizedBox(width: 5),
                    buildInput(context, myLadydate, 4, myLadyController),
                    buildInput(context, myLadydate, 5, myLadyController),
                    buildInput(context, myLadydate, 6, myLadyController),
                    buildInput(context, myLadydate, 7, myLadyController),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    buildInput(context, myMandate, 0, myManController),
                    buildInput(context, myMandate, 1, myManController),
                    SizedBox(width: 5),
                    buildInput(context, myMandate, 2, myManController),
                    buildInput(context, myMandate, 3, myManController),
                    SizedBox(width: 5),
                    buildInput(context, myMandate, 4, myManController),
                    buildInput(context, myMandate, 5, myManController),
                    buildInput(context, myMandate, 6, myManController),
                    buildInput(context, myMandate, 7, myManController),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();

                        for (var i = 0; i < myController.length; i++) {
                          myLadyController[i].clear();
                          myManController[i].clear();
                        }
                      },
                      child: Text("Sıfırla", style: myStyle15),
                    ),
                    FlatButton(
                      onPressed: () {
                        // myPinCode = calculatePin(myBirthdate);
                        print('My Birthdate: $myBirthdate');
                        print('My Pincode: $myPinCode');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ResultPage()),
                        // );
                      },
                      child: Text(
                        "Hesapla",
                        style: myStyle15,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
