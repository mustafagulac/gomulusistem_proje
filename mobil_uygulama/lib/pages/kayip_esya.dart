//import 'dart:html';
import 'package:akilliulasim_proje/pages/aranan_esyalar.dart';
import 'package:akilliulasim_proje/pages/bulunan_esyalar.dart';
import 'package:akilliulasim_proje/pages/deneme.dart';
import 'package:akilliulasim_proje/pages/esya_buldum.dart';
import 'package:akilliulasim_proje/pages/esyam_kayip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class KayipEsyaPage extends StatefulWidget {
  const KayipEsyaPage({Key? key}) : super(key: key);

  @override
  _KayipEsyaPageState createState() => _KayipEsyaPageState();
}

class _KayipEsyaPageState extends State<KayipEsyaPage> {
 // final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xff8dc63f),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 25),
                width: MediaQuery.of(context).size.width * 0.70,
                child: Image.asset("assets/images/logo_text.png"),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Image.asset(
                            "assets/images/kayip.png",
                            width: 140,
                            height: 140,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Text("KAYIP EŞYA BİLDİRİMİ",
                          style: TextStyle(
                                  color: Color(0xff8dc63f),
                                  fontFamily: "Balo",
                                  fontSize: 40)),
                        ),
                      ],
                    ),
                  ),
                ),
               
               Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                alignment: Alignment.center,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color(0xff0a96ba),
                                      Color(0xff4cb1cd)
                                    ],
                                    tileMode: TileMode.repeated,
                                  ),
                                ),
                                child: Text(
                                  "ARANAN EŞYALAR",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Coiny",
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ArananEsyalarPage()))
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                alignment: Alignment.center,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color(0xffe86121),
                                      Color(0xffed763e)
                                    ],
                                    tileMode: TileMode.repeated,
                                  ),
                                ),
                                child: Text(
                                  "BULUNAN EŞYALAR",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Coiny",
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BulunanEsyalarPage()))
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

               
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                alignment: Alignment.center,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color(0xffa99e33),
                                      Color(0xffedeb4b)
                                    ],
                                    tileMode: TileMode.repeated,
                                  ),
                                ),
                                child: Text(
                                  "EŞYAM KAYIP",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Coiny",
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EsyamKayipPage()))
                              },
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                alignment: Alignment.center,
                                height: 105,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      Color(0xff87276e),
                                      Color(0xffb24a99)
                                    ],
                                    tileMode: TileMode.repeated,
                                  ),
                                ),
                                child: Text(
                                  "EŞYA BULDUM",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Coiny",
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EsyaBuldumPage()))
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
