import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextStyle myStyle25 = new TextStyle(fontSize: 25);
TextStyle myStyle20 = new TextStyle(fontSize: 20);
TextStyle myStyle15 = new TextStyle(fontSize: 15);
TextStyle myStyle12 = new TextStyle(fontSize: 12);
TextStyle myStyle10 = new TextStyle(fontSize: 10);

List<int> myBirthdate = List<int>.generate(8, (index) => 0);
List<int> myLadydate = List<int>.generate(8, (index) => 0);
List<int> myMandate = List<int>.generate(8, (index) => 0);
List<int> myPinCode = List<int>.generate(9, (index) => 0);

List<TextEditingController> myController = List<TextEditingController>.generate(
    8, (index) => new TextEditingController());
List<TextEditingController> myManController =
    List<TextEditingController>.generate(
        8, (index) => new TextEditingController());
List<TextEditingController> myLadyController =
    List<TextEditingController>.generate(
        8, (index) => new TextEditingController());

Map<int, String> myBullShits = {
  // 0: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra, est sit amet rutrum cursus, lectus quam lacinia urna, non malesuada leo mi et turpis. Nam vel varius mi. Curabitur dui elit, consequat et ipsum quis, mollis ultrices sem.",
  1: "Güçlü yanları: Yaratıcı, lider, konuşkan, uçucu, parlak, dokunsal, neşeli, gururlu, kendine güvenen ve kendinden emin, ilgili.\nZayıf Yanları: Depresif, yüksek sesli, alıngan, hoşgörüsüz, huysuz, kendine güvensiz, tembel değişken, saldırgan, ağzında geveleyerek konuşan, bencil",
  2: "Güçlü yanları: Besleyici, özenli, sessiz, gözlemci, soğuk ve etkileyici, utangaç, evcimen, sakin, ağzı sıkı, ağırbaşlı.\nZayıf Yanları: Duygusal, hassas, ağlamaklı, savunmacı, içine kapanık, aşırı koruyucu, sinirli, mantıksız, hüzünlü, somurtkan, değişken",
  3: "Güçlü yanları: Organize, bağımsız, adanmış, dindar, iyimser, samimi, neşeli, canlı, dürüst, tutkulu, ciddi, hayvansever.\nZayıf Yanları: Acımasız, fanatik, küstah, davranış sorunu olabilen, somurtkan, küskün, ilgisiz, kayıtsız, askeri düzende, hoppa, yanlış yönlendirilebilen, düşmanca davranan",
  4: "Güçlü yanları: Esrarengiz, devrimsel, amaca yönelik, zeki, sıradışı, ileri görüşlü, farklı, temkinli, heyecanlandırıcı, cesaretlendirici, bireysel, sadık, adil.\nZayıf Yanları: Gizleme eğiliminde, muammalı, tuhaf, şaşırtıcı konuşmalar yapan, göreneklere uymayan, kindar, kolay heyecanlanan, patavatsız, ön yargılı, önceden tahmin edilemez, hilekar, sabit, yalancı",
  5: "Güçlü yanları: Nazik, mizahi, analitik, dışa dönük, konuşkan, esnek, mantıklı, sonuç odaklı, değişimden hoşlanan.\nZayıf Yanları: Asi, yerinde duramayan, eleştiren, itiraz eden, keskin dilli, havai, gerilimli, zor, karşıt fikirli, sinirli",
  6: "Güçlü yanları: Dost canlısı, sevecen, romantik, çekici, tutkulu, tensel uyumlu, uzlaştırıcı, sakin.\nZayıf Yanları: Kıskanç, cimri, aşırı duygusal, talepkar, kendisiyle ilgili, ölçüsüz, hesapçı, hayalperest, içine kapanık, uyumsuz",
  7: "Güçlü yanları: Ilımlı, sessiz, adanmış, sanat tutkunu, tarafsız, kararlı, güvenilir, seçkin, meraklı, idealist.\nZayıf Yanları: İntikamcı, münzevi, soğuk, duygusal, radikal, değişken, endişeli, ifadesiz, saldırgan, kontrol etme takıntısı olan, utangaç",
  8: "Güçlü yanları: Dengeli, sabırlı, destekleyici, sorumluluk sahibi, ciddi, deneyimli, soğukkanlı, çalışkan, güvenlik duygusundan hoşlanan, akıllı, dünyevi.\nZayıf Yanları: Güvensiz, telaşlı, gergin, takıntılı, duygularını gizleyen, hesapçı, buyurgan, dalavereci, sabit, kendini kurban hisseden ya da kurban rolü oynamayı seven",
  9: "Güçlü yanları: Çocuksu, sanatkar, zeki, masum, hassas, kararlı, bağışlayıcı, dürüst, saf, benzersiz.\nZayıf Yanları: Tutarsız, aklı karışık, budala, düşünmeden hareket eden, unutkan, kibirli, güvensiz, inatçı, sabırsız",
};

List<int> calculateCouple(List<int> manBirthday, List<int> ladyBirthday) {
  List<int> pin = List<int>.generate(9, (index) => 0);
  pin[0] = (manBirthday[0] + ladyBirthday[0]) % 9;
  pin[1] = (manBirthday[1] + ladyBirthday[1]) % 9;
  pin[2] = (manBirthday[2] + ladyBirthday[2]) % 9;
  pin[3] = (manBirthday[3] + ladyBirthday[3]) % 9;
  pin[4] = (manBirthday[4] + ladyBirthday[4]) % 9;
  pin[5] =
      ((pin[0] + pin[1]) % 9) + ((manBirthday[6] + ladyBirthday[6]) % 9) % 9;
  pin[6] =
      ((pin[3] + pin[4]) % 9) + ((manBirthday[7] + ladyBirthday[7]) % 9) % 9;
  pin[7] = (pin[5] + pin[6]) % 9;
  pin[8] = sum(pin) % 9;
  return pin;
}

List<int> calculatePin(List<int> birthday) {
  List<int> pin = List<int>.generate(9, (index) => 0);
  pin[0] = (birthday[0] + birthday[1]) % 9;
  pin[1] = (birthday[2] + birthday[3]) % 9;
  pin[2] = (birthday[4] + birthday[7]) % 9;
  pin[3] = (pin[0] + pin[1] + pin[2]) % 9;
  pin[4] = (pin[0] + pin[3]) % 9;
  pin[5] = (pin[0] + pin[1]) % 9;
  pin[6] = (pin[1] + pin[2]) % 9;
  pin[7] = (pin[5] + pin[6]) % 9;
  pin[8] = sum(pin) % 9;

  return pin;
}

int sum(List<int> arr) {
  int sum = 0;
  for (var i = 0; i < arr.length - 1; i++) {
    sum += arr[i];
  }
  return sum;
}

Widget buildResultTriangle(pin) {
  return Column(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            pin[0].toString() +
                '    ' +
                pin[1].toString() +
                '    ' +
                pin[2].toString() +
                '    ' +
                pin[3].toString() +
                '    ' +
                pin[4].toString(),
            style: myStyle25,
          ),
          Text(
            '   ' + pin[5].toString() + '    ' + pin[6].toString(),
            style: myStyle25,
          ),
          Text(
            '      ' + pin[7].toString(),
            style: myStyle25,
          ),
        ],
      ),
      SizedBox(height: 10),
      Text(
        'Toplam Sayınız: ' + pin[8].toString(),
        style: myStyle15,
      ),
    ],
  );
}

Widget buildOtherMeaning(bullshit, pin, index, title) {
  String myTitle = title + ': ' + pin[index].toString() + ' rakamı';
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
    child: Column(
      children: [
        Text(
          myTitle,
          style: myStyle15,
        ),
        Text(
          bullshit[pin[index]],
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

Widget buildBirthdayLabel() {
  return Text(
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
    style: myStyle15,
  );
}

Widget buildTitle(title) {
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

Widget buildInput(context, birthday, index, controllerArr) {
  return Container(
    height: 30,
    width: 30,
    child: TextField(
      cursorColor: Colors.red,
      style: myStyle15,
      controller: controllerArr[index],
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      onChanged: (value) {
        birthday[index] = int.parse(value);
        FocusScope.of(context).nextFocus();
      },
      onSubmitted: (value) => FocusScope.of(context).nextFocus(),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
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
