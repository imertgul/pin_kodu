import 'package:flutter/material.dart';

TextStyle myStyle25 = new TextStyle(fontSize: 25);
TextStyle myStyle20 = new TextStyle(fontSize: 20);
TextStyle myStyle15 = new TextStyle(fontSize: 15);
TextStyle myStyle12 = new TextStyle(fontSize: 12);
TextStyle myStyle10 = new TextStyle(fontSize: 10);

List<int> myBirthdate = List<int>.generate(8, (index) => 0);
List<int> myPinCode = List<int>.generate(8, (index) => 0);
List<TextEditingController> myController = List<TextEditingController>.generate(
    8, (index) => new TextEditingController());

Map<int, String> myBullShits = {
  // 0: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  1: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  5: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  6: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  7: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  8: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  9: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
};
