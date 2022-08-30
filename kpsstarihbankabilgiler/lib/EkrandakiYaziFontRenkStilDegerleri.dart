import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EkrandakiYaziFontRenkStillDegerleri {
  static String AppBarYazisi = "KPSS BANKO TARİH BİLGİLERİ";
  static const AppBarArkaPlanRengi = Color(0xffc04000);
  static const AppBarBorderRadiusDegeri = BorderRadius.vertical(
    bottom: Radius.circular(30),
  );

  static var AppBarYazisiStili = GoogleFonts.oswald(
    color: Colors.white,
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  );
  static var soruCevapKolonuMargin = EdgeInsets.all(15);
  static var soruCevapKolonuBorderRadius = BorderRadius.circular(20);
  static var yonTuslariYaziStili = GoogleFonts.oswald(
    color: Colors.orange,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static var soruYaziStil = GoogleFonts.play(
    //color: Color(0xff009900),
    color: Colors.white,
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,

  );
  static var cevapYaziStil = GoogleFonts.oswald(
    color: Colors.teal,
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,

  );
  static var acilirMenuYaziStili = GoogleFonts.play(
    color: Colors.orange,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,

  );
  static var alertDialogYaziStili = GoogleFonts.play(
    //color: Color(0xff009900),
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,

  );
  static var alertDialogCevapYaziStili = GoogleFonts.play(
    //color: Color(0xff009900),
    color: Colors.orange,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,

  );
}
