// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_single_cascade_in_expression_statements

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpsstarihbankabilgiler/EkrandakiYaziFontRenkStilDegerleri.dart';
import 'package:kpsstarihbankabilgiler/appBarKolonu.dart';
import 'dart:async';
import 'package:kpsstarihbankabilgiler/sorucevapkolon.dart';
import 'package:kpsstarihbankabilgiler/tarihbilgiler.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double heightDegeri = 70;
  String yaziDegeri = "AÇ";

  timerCalistir() {
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        heightDegeri++;
      });
      if (heightDegeri == 400) {
        timer.cancel();
        setState(() {
          yaziDegeri = "KAPAT";
        });
      }
    });
  }

  timerKapat() {
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        heightDegeri--;
      });
      if (heightDegeri == 70) {
        timer.cancel();
        setState(() {
          yaziDegeri = "AÇ";
        });
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/arkaplanresim.jpg'),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBarKolonu(),
              SoruCevapKolon(),
              Container(
                width: double.infinity,
                height: heightDegeri.sp,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        yaziDegeri == "AÇ" ? timerCalistir() : timerKapat();
                      },
                      child: Text(
                        yaziDegeri,
                        style: EkrandakiYaziFontRenkStillDegerleri
                            .yonTuslariYaziStili,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/resimim.jpg"),
                                fit: BoxFit.fill)),
                        child: ListView.builder(
                            itemCount: kpssTarihBankoSoruCevap.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    print(kpssTarihBankoSoruCevap[index].Soru);
                                    AwesomeDialog(
                                      context: context,
                                      animType: AnimType.TOPSLIDE,
                                      dialogType: DialogType.INFO_REVERSED,
                                      body: Center(
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  kpssTarihBankoSoruCevap[index]
                                                      .Soru,
                                                  style:
                                                      EkrandakiYaziFontRenkStillDegerleri
                                                          .alertDialogYaziStili,
                                                ),
                                                Text(""),
                                                Text(
                                                    "Cevap => " +
                                                        kpssTarihBankoSoruCevap[
                                                                index]
                                                            .Cevap,
                                                    style: EkrandakiYaziFontRenkStillDegerleri
                                                        .alertDialogCevapYaziStili),
                                              ],
                                            )),
                                      ),
                                      dismissOnTouchOutside: false,
                                      btnOkColor: Colors.green,
                                      dialogBackgroundColor: Colors.white,
                                      btnOkText: 'KAPAT',
                                      btnOkIcon: Icons.cancel_sharp,
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 3),
                                      btnOkOnPress: () {},
                                    )..show();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.sp,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          kpssTarihBankoSoruCevap[index].Soru,
                                          style:
                                              EkrandakiYaziFontRenkStillDegerleri
                                                  .acilirMenuYaziStili,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
 showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        // return object of type Dialog
                                        return AlertDialog(
                                          buttonPadding: EdgeInsets.all(12),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              side: BorderSide(
                                                  color: Colors.red, width: 1)),
                                          backgroundColor: Colors.brown,
                                          contentPadding: EdgeInsets.all(15),
                                          title: Text(
                                            kpssTarihBankoSoruCevap[index].Soru,
                                            style:
                                                EkrandakiYaziFontRenkStillDegerleri
                                                    .alertDialogYaziStili,
                                          ),
                                          content: Text(
                                            "Cevap => " +
                                                kpssTarihBankoSoruCevap[index]
                                                    .Cevap,
                                            style:
                                                EkrandakiYaziFontRenkStillDegerleri
                                                    .cevapYaziStil,
                                          ),
                                          actions: <Widget>[
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'KAPAT',
                                                style:
                                                    EkrandakiYaziFontRenkStillDegerleri
                                                        .yonTuslariYaziStili,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
*/
