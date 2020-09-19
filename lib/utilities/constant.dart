import 'package:flutter/material.dart';

TextStyle myStyle25 = new TextStyle(fontSize: 25);
TextStyle myStyle20 = new TextStyle(fontSize: 20);
TextStyle myStyle15 = new TextStyle(fontSize: 15);
TextStyle myStyle12 = new TextStyle(fontSize: 12);
TextStyle myStyle10 = new TextStyle(fontSize: 10);

List<int> myBirthdate = List<int>.generate(8, (index) => 0);
List<int> myPinCode = List<int>.generate(9, (index) => 0);

List<TextEditingController> myController = List<TextEditingController>.generate(
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
