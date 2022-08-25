import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kpsstarihbankabilgiler/EkrandakiYaziFontRenkStilDegerleri.dart';

class AppBarKolonu extends StatelessWidget {
  const AppBarKolonu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.sp,
      child: Center(
        child: Text(EkrandakiYaziFontRenkStillDegerleri.AppBarYazisi,
            style: EkrandakiYaziFontRenkStillDegerleri.AppBarYazisiStili),
      ),
      decoration: const BoxDecoration(
        borderRadius:
            EkrandakiYaziFontRenkStillDegerleri.AppBarBorderRadiusDegeri,
        color: EkrandakiYaziFontRenkStillDegerleri.AppBarArkaPlanRengi,
      ),
    );
  }
}
