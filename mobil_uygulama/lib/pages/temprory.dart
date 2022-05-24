import 'package:akilliulasim_proje/pages/deneme.dart';
import 'package:akilliulasim_proje/pages/doluluk.dart';
import 'package:akilliulasim_proje/pages/driver_main.dart';
import 'package:akilliulasim_proje/pages/esya_buldum.dart';
import 'package:akilliulasim_proje/pages/esyam_kayip.dart';
import 'package:akilliulasim_proje/pages/hat_degistir.dart';
import 'package:akilliulasim_proje/pages/kayip_esya.dart';
import 'package:akilliulasim_proje/pages/main.dart';
import 'package:akilliulasim_proje/pages/login.dart';
import 'package:akilliulasim_proje/pages/oneri_sikayet.dart';
import 'package:akilliulasim_proje/pages/otobus_nerede.dart';
import 'package:akilliulasim_proje/pages/rehber.dart';
import 'package:akilliulasim_proje/pages/temp_and_humidity.dart';
import 'package:akilliulasim_proje/pages/yol_yardim.dart';
import 'package:flutter/material.dart';

class TemproryPage extends StatefulWidget {
  const TemproryPage({Key? key}) : super(key: key);

  @override
  _TemproryPageState createState() => _TemproryPageState();
}

class _TemproryPageState extends State<TemproryPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Image.asset("assets/images/logo.png",
                        width: 150, height: 150),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("AKILLI ULAŞIM",
                        style: TextStyle(
                            color: Color(0xff009444),
                            fontFamily: "Coiny",
                            fontSize: 40)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Slogan Yazısı",
                    style: TextStyle(
                        color: Color(0xff8dc63f),
                        fontFamily: "Autour",
                        fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
