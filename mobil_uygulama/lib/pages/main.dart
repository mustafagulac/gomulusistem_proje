import 'package:akilliulasim_proje/pages/doluluk.dart';
import 'package:akilliulasim_proje/pages/kayip_esya.dart';
import 'package:akilliulasim_proje/pages/login.dart';
import 'package:akilliulasim_proje/pages/oneri_sikayet.dart';
import 'package:akilliulasim_proje/pages/otobus_nerede.dart';
import 'package:akilliulasim_proje/pages/temp_and_humidity.dart';
import 'package:akilliulasim_proje/pages/yol_yardim.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.20,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                child: Image.asset("assets/images/logo_text.png"),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.10,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 25, 22, 0),
                child: Container(
                  child: Text("Hoş Geldiniz Sayın Enis",
                      style: TextStyle(
                          color: Color(0xff8dc63f),
                          fontFamily: "Balo",
                          fontSize: 30)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 5, 22, 30),
                child: Container(
                  child: Text("Hangi İşlemi Yapmak İstersiniz?",
                      style: TextStyle(
                          color: Color(0xff8dc63f),
                          fontFamily: "Balo",
                          fontSize: 25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                            alignment: Alignment.center,
                            height: 105,
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xff0e4271),
                                  Color(0xff0372b7)
                                ],
                                tileMode: TileMode.repeated,
                              ),
                            ),
                            
                              child: Text(
                                "OTOBÜSÜM NEREDE?",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Coiny",
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              
                            ),
                            margin: EdgeInsets.only(bottom: 20),
                            
                            ),
                        onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Otobus_TakipPage()))
                } ,
                      ),
                      GestureDetector(
                        child: Container(
                          
                            alignment: Alignment.center,
                            height: 105,
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xff9a572a),
                                  Color(0xfff5943d)
                                ],
                                tileMode: TileMode.repeated,
                              ),
                            ),
                            child: Text(
                              "DOLULUK",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Coiny",
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.only(bottom: 20)),
                            onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DolulukPage(),))
                } ,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Container(
                            alignment: Alignment.center,
                            height: 105,
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xff941d21),
                                  Color(0xffeb3c43)
                                ],
                                tileMode: TileMode.repeated,
                              ),
                            ),
                            child: Text(
                              "OTOBÜSÜN  ISI VE NEMİ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Coiny",
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.only(bottom: 20)),
                            onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Temperature_HumidityPage(),))
                } ,
                      ),
                      GestureDetector(
                        child: Container(
                            alignment: Alignment.center,
                            height: 105,
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xff6e1d55),
                                  Color(0xffb24a99)
                                ],
                                tileMode: TileMode.repeated,
                              ),
                            ),
                            child: Text(
                              "KAYIP EŞYA BİLDİRİMİ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Coiny",
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.only(bottom: 20)),
                            onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => KayipEsyaPage(),))
                } ,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                            alignment: Alignment.center,
                            height: 105,
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xff0f6a6d),
                                  Color(0xff13acba)
                                ],
                                tileMode: TileMode.repeated,
                              ),
                            ),
                            child: Text(
                              "ÖNERİ & ŞİKAYET",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Coiny",
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.only(bottom: 40)),
                            onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Oneri_SikayetPage(),))
                } ,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color(0xff000000),
                                Color(0xff0e4271)
                              ],
                              tileMode: TileMode.repeated,
                            ),
                          ),
                          child: Text(
                            "Çıkış Yap",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),))
                } ,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
