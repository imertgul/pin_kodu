import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utilities/constant.dart';
import 'ResultPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildTitle(widget.title),
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
                _buildInput(context, 0),
                _buildInput(context, 1),
                SizedBox(width: 5),
                _buildInput(context, 2),
                _buildInput(context, 3),
                SizedBox(width: 5),
                _buildInput(context, 4),
                _buildInput(context, 5),
                _buildInput(context, 6),
                _buildInput(context, 7),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    for (var i = 0; i < myController.length; i++) {
                      myController[i].clear();
                    }
                  },
                  child: Text("Sıfırla", style: myStyle15),
                ),
                FlatButton(
                    onPressed: () {
                      myBlackList.removeRange(0, myBlackList.length);
                      myPinCode[0] = (myBirthdate[0] + myBirthdate[1]) % 9;
                      myPinCode[1] = (myBirthdate[2] + myBirthdate[3]) % 9;
                      myPinCode[2] = (myBirthdate[4] + myBirthdate[7]) % 9;
                      myPinCode[3] =
                          (myPinCode[0] + myPinCode[1] + myPinCode[2]) % 9;
                      myPinCode[4] = (myPinCode[0] + myPinCode[3]) % 9;
                      myPinCode[5] = (myPinCode[0] + myPinCode[1]) % 9;
                      myPinCode[6] = (myPinCode[1] + myPinCode[2]) % 9;
                      myPinCode[7] = (myPinCode[5] + myPinCode[6]) % 9;
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
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildTitle(title) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: myStyle25,
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget _buildInput(context, index) {
  return Container(
    height: 30,
    width: 30,
    child: TextField(
      cursorColor: Colors.red,
      style: myStyle15,
      controller: myController[index],
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      onChanged: (value) => myBirthdate[index] = int.parse(value),
      onSubmitted: (value) => FocusScope.of(context).nextFocus(),
      inputFormatters: <TextInputFormatter>[
        LengthLimitingTextInputFormatter(1),
      ],
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black12, width: 1.0),
        ),
        contentPadding: EdgeInsets.only(left: 10),
      ),
    ),
  );
}
