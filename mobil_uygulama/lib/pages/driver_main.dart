import 'package:akilliulasim_proje/pages/hat_degistir.dart';
import 'package:akilliulasim_proje/pages/login.dart';
import 'package:akilliulasim_proje/pages/rehber.dart';
import 'package:akilliulasim_proje/pages/yol_yardim.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatefulWidget {
  const DriverPage({Key? key}) : super(key: key);

  @override
  _DriverPageState createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
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
                width: MediaQuery.of(context).size.width * 0.6,
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
                padding: const EdgeInsets.fromLTRB(40, 25, 35, 0),
                child: Container(
                  child: Text("43 DPU 433",
                      style: TextStyle(
                          color: Color(0xff8dc63f),
                          fontFamily: "Balo",
                          fontSize: 30)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 5, 35, 30),
                child: Container(
                  child: Text("Mevcut Hat : 7A ",
                      style: TextStyle(
                          color: Color(0xff8dc63f),
                          fontFamily: "Balo",
                          fontSize: 25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 35, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
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
                            "SİSTEMİ BAŞLAT",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.only(bottom: 20)),
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
                            "HAT DEĞİŞTİR",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Hat_DegistirPage()))
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 35, 0),
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
                            "YOL YARDIM",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Yol_YardimPage()))
                        },
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
                            "REHBER",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RehberPage()))
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 30, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
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
                            "SİSTEMİ KAPAT",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          margin: EdgeInsets.only(bottom: 40)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 35, 0),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()))
                        },
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
