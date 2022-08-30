// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
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

  late InterstitialAd interstitialAduc;
  bool isLoadinguc = false;
  void initAdduc() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/9567091884', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadeduc, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadeduc(InterstitialAd ad) {
    interstitialAduc = ad;
    isLoadinguc = true;
  }

  //-----------------------------------------
  late InterstitialAd interstitialAddort;
  bool isLoadindort = false;
  void initAddort() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/9300881469', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadeddort, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadeddort(InterstitialAd ad) {
    interstitialAddort = ad;
    isLoadindort = true;
  }

//-------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddbes;
  bool isLoadinbes = false;
  void initAddbes() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/2543901422', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedbes, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedbes(InterstitialAd ad) {
    interstitialAddbes = ad;
    isLoadinbes = true;
  }

  //----------------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddalti;
  bool isLoadinalti = false;
  void initAddalti() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/1617283823', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedalti, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedalti(InterstitialAd ad) {
    interstitialAddalti = ad;
    isLoadinalti = true;
  }

  //----------------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddyedi;
  bool isLoadinyedi = false;
  void initAddyedi() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/6566358175', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedyedi, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedyedi(InterstitialAd ad) {
    interstitialAddyedi = ad;
    isLoadinyedi = true;
  }

  //----------------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddsekiz;
  bool isLoadinsekiz = false;
  void initAddsekiz() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/6681036102', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedsekiz, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedsekiz(InterstitialAd ad) {
    interstitialAddsekiz = ad;
    isLoadinsekiz = true;
  }
  //----------------------------------------------

  late InterstitialAd interstitialgeribir;
  bool isLoadingeribir = false;
  void initAddgeribir() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/3671729387', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgeribir, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgeribir(InterstitialAd ad) {
    interstitialgeribir = ad;
    isLoadingeribir = true;
  }

  //----------------------------------------------
  late InterstitialAd interstitialgeriiki;
  bool isLoadingeriiki = false;
  void initAddgeriiki() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/8454154913', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgeriiki, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgeriiki(InterstitialAd ad) {
    interstitialgeriiki = ad;
    isLoadingeriiki = true;
  }

  //--------------------------------------
  late InterstitialAd interstitialgeriuc;
  bool isLoadingeriuc = false;
  void initAddgeriuc() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/7523344484', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgeruc, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgeruc(InterstitialAd ad) {
    interstitialgeriuc = ad;
    isLoadingeriuc = true;
  }

  //------------------------
  late InterstitialAd interstitialgeridort;
  bool isLoadingeridort = false;
  void initAddgeridort() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/9134974909', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgerdort, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgerdort(InterstitialAd ad) {
    interstitialgeridort = ad;
    isLoadingeridort = true;
  }

  //--------------------------

  @override
  void initState() {
    super.initState();
    initAdduc();
    initAddort();
    initAddbes();
    initAddalti();
    initAddyedi();
    initAddsekiz();
    initAddgeribir();
    initAddgeriiki();
    initAddgeriuc();
    initAddgeridort();
  }

  reklamiGoster() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      print(timer.tick);
      if (isLoadinguc) {
        if (timer.tick == 5) {
          interstitialgeribir.show();
        }
        if (timer.tick == 60) {
          interstitialgeriiki.show();
        }
        if (timer.tick == 100) {
          interstitialgeridort.show();
        }
        if (timer.tick == 160) {
          interstitialAddyedi.show();
        }
        if (timer.tick == 240) {
          interstitialAddsekiz.show();
        }
        if (timer.tick == 300) {
          interstitialAddsekiz.show();
        }
        if (timer.tick == 360) {
          interstitialgeriuc.show();
          timer.cancel();
        }
      }
    });
  }

  //-----------------------------------------
  gecisileriReklamGosterici(int ResimIndex) {
    if (isLoadinguc) {
      switch (ResimIndex) {

        case 50:
          interstitialAddort.show();
          break;
        case 60:
          interstitialAddbes.show();
          break;
        case 70:
          interstitialAddalti.show();
          break;
      }
    }
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
                    ),
                  ),
                ),
                Text(
                  "${soruIndex + 1}" + "/${kpssTarihBankoSoruCevap.length}",
                  style: EkrandakiYaziFontRenkStillDegerleri.soruYaziStil,
                ),
                GestureDetector(
                  onTap: () {
                    soruIndexArtis();
                    if (soruIndex == kpssTarihBankoSoruCevap.length) {
                      soruIndex = 0;
                    }
                    if (soruIndex == 2) {
                      reklamiGoster();
                    }
                    print(soruIndex);
                    gecisileriReklamGosterici(soruIndex);
                  },
                  child: CircleAvatar(
                    radius: 25.sp,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      'images/sag.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
