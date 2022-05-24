import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EsyaBuldumPage extends StatefulWidget {
  const EsyaBuldumPage({Key? key}) : super(key: key);

  @override
  _EsyaBuldumPageState createState() => _EsyaBuldumPageState();
}

class _EsyaBuldumPageState extends State<EsyaBuldumPage> {

TextEditingController bulunanEsya = TextEditingController();


bulunanEsyaEkle(){
  FirebaseFirestore.instance.collection("EsyaBuldum").doc(bulunanEsya.text).set({'BulunanEsyaMesaj': bulunanEsya.text});
}

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
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [     
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(
                            "EŞYA BULDUM",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff8dc63f),
                                fontFamily: "Balo",
                                fontSize: 54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: [
                        
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                "Mesajınız :",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: TextField(
                                controller: bulunanEsya,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5, // <-- SEE HERE
                                minLines: 1, // <-- SEE HERE
                                textAlignVertical: TextAlignVertical.center,
                                style:
                                    TextStyle(
                                      fontSize: 20, 
                                      color: Colors.black,
                                      ),
                                decoration: InputDecoration(
                                  hintText: "Örnek Bildirim Metni: \nSaat 11.30 civarında 7 numaralı hatta cüzdan Buldum.\nİletişim: 05555555555\nAli Veli",
                                  border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color(0xffc66d2b),
                                Color(0xfff5943d)
                              ],
                              tileMode: TileMode.repeated,
                            ),
                          ),
                          child: Text(
                            "Gönder",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Coiny",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: bulunanEsyaEkle,
                      ),
                    ],
                  ),
                ),
              ),
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
