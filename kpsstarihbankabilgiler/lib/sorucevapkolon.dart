// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpsstarihbankabilgiler/EkrandakiYaziFontRenkStilDegerleri.dart';
import 'package:kpsstarihbankabilgiler/tarihbilgiler.dart';

class SoruCevapKolon extends StatefulWidget {
  const SoruCevapKolon({
    Key? key,
  }) : super(key: key);

  @override
  State<SoruCevapKolon> createState() => _SoruCevapKolonState();
}

class _SoruCevapKolonState extends State<SoruCevapKolon> {
  int soruIndex = 0;

  soruIndexArtis() {
    setState(() {
      soruIndex++;
    });
  }

  soruIndexAzalis() {
    setState(() {
      soruIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EkrandakiYaziFontRenkStillDegerleri.soruCevapKolonuMargin,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(.8),
            borderRadius: EkrandakiYaziFontRenkStillDegerleri
                .soruCevapKolonuBorderRadius),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(kpssTarihBankoSoruCevap[soruIndex].Soru,
                  style: EkrandakiYaziFontRenkStillDegerleri.soruYaziStil),
            ),
            Text(kpssTarihBankoSoruCevap[soruIndex].Cevap,
                style: EkrandakiYaziFontRenkStillDegerleri.cevapYaziStil),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    soruIndexAzalis();
                    print(soruIndex);
                    if (soruIndex == -1) {
                      soruIndex = kpssTarihBankoSoruCevap.length - 1;
                    }
                  },
                  child: CircleAvatar(
                      radius: 25.sp,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'images/sol.png',
                        fit: BoxFit.fill,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    soruIndexArtis();
                    print(soruIndex);
                    if (soruIndex == kpssTarihBankoSoruCevap.length) {
                      soruIndex = 0;
                    }
                  },
                  child: CircleAvatar(
                      radius: 25.sp,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'images/sag.png',
                        fit: BoxFit.fill,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
