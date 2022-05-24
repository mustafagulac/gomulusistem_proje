import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Oneri_SikayetPage extends StatefulWidget {
  const Oneri_SikayetPage({Key? key}) : super(key: key);

  @override
  _Oneri_SikayetPageState createState() => _Oneri_SikayetPageState();
}

class _Oneri_SikayetPageState extends State<Oneri_SikayetPage> {
  String dropdownvalue = 'Öneri';

  // List of items in our dropdown menu
  var items = [
    'Öneri',
    'Şikayet',
  ];

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Image.asset(
                            "assets/images/comment.png",
                            width: 120,
                            height: 120,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * 0.50,
                          child: Text(
                            "ÖNERİ & ŞİKAYET",
                            style: TextStyle(
                                color: Color(0xff8dc63f),
                                fontFamily: "Balo",
                                fontSize: 40),
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
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                "Tür :",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: DropdownButton(
                                // Initial Value
                                value: dropdownvalue,
                                menuMaxHeight: 200,
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),
                                iconSize: 30,
                                itemHeight: 50,
                                iconDisabledColor: Color(0xff8dc63f),
                                iconEnabledColor: Color(0xff8dc63f),
                                dropdownColor: Colors.white,
                                style: TextStyle(
                                  fontFamily: "Balo",
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
      
                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                "Ad Soyad :",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                "E-posta :",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Text(
                                "Tel No:",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                                keyboardType: TextInputType.multiline,
                                maxLines: 5, // <-- SEE HERE
                                minLines: 1, // <-- SEE HERE
                                textAlignVertical: TextAlignVertical.center,
                                style:
                                    TextStyle(fontSize: 20, color: Colors.black),
                                decoration: InputDecoration(
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
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(0xff04508e),
                              Color(0xff0372b7)
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
