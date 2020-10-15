import 'package:flutter/material.dart';
import '../utilities/constant.dart';
import 'CouplePage.dart';
import 'ResultPage.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildTitle(widget.title),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lütfen Doğum tarihinizi giriniz",
                    style: myStyle15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    buildInput(context, myBirthdate, 0, myController),
                    buildInput(context, myBirthdate, 1, myController),
                    SizedBox(width: 5),
                    buildInput(context, myBirthdate, 2, myController),
                    buildInput(context, myBirthdate, 3, myController),
                    SizedBox(width: 5),
                    buildInput(context, myBirthdate, 4, myController),
                    buildInput(context, myBirthdate, 5, myController),
                    buildInput(context, myBirthdate, 6, myController),
                    buildInput(context, myBirthdate, 7, myController),
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
                          myController[i].clear();
                        }
                      },
                      child: Text("Sıfırla", style: myStyle15),
                    ),
                    FlatButton(
                      onPressed: () {
                        myPinCode = calculatePin(myBirthdate);

                        print('My Birthdate: $myBirthdate');

                        print('My Pincode: $myPinCode');

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResultPage()),
                        );
                      },
                      child: Text(
                        "Hesapla",
                        style: myStyle15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CouplePage(title: "İlişki Kodu"))),
                child: Text("İlişki Kodu Hesapla"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
