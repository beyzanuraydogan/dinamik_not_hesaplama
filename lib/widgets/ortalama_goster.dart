import 'package:dinamik_not_hesapla/constans/app_constants.dart';
import 'package:flutter/cupertino.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;

  const OrtalamaGoster(
      {required this.dersSayisi, required this.ortalama, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(dersSayisi > 0 ? "$dersSayisi ders girildi" : "Ders Seçiniz.",
            style: Sabitler.ortalamaGosterStyle),
        Text(ortalama >= 0 ? ortalama.toStringAsFixed(2) : "0.0",
            style: Sabitler.ortalamaStyle),
        Text("Ortalama", style: Sabitler.ortalamaGosterStyle),
      ],
    );
  }
}
