import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Yol_YardimPage extends StatefulWidget {
  const Yol_YardimPage({Key? key}) : super(key: key);

  @override
  _Yol_YardimPageState createState() => _Yol_YardimPageState();
}

class _Yol_YardimPageState extends State<Yol_YardimPage> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    }
    else{
    print("$command bulunamadı");
    }
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
      body: SafeArea(
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
                          "assets/images/yol_yardim.png",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Text(
                          "    YOL YARDIM",
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
              Divider(
                color: Colors.black,
                thickness: 5,
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
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              "Ahmet Yol Yardım",
                              style: TextStyle(
                                  color: Color(0xff8dc63f),
                                  fontFamily: "Balo",
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: InkWell(
                              onTap: () {
                                customLaunch("tel:05532824860");
                              },
                              child: Image.asset(
                                'assets/images/call.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ],
                      ),

                       Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              "Mehmet Yol Yardım",
                              style: TextStyle(
                                  color: Color(0xff8dc63f),
                                  fontFamily: "Balo",
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: InkWell(
                              onTap: () {
                                customLaunch("tel:05532824860");
                              },
                              child: Image.asset(
                                'assets/images/call.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ],
                      ),

                       Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              "Veli Yol Yardım",
                              style: TextStyle(
                                  color: Color(0xff8dc63f),
                                  fontFamily: "Balo",
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: InkWell(
                              onTap: () {
                                customLaunch("tel:05532824860");
                              },
                              child: Image.asset(
                                'assets/images/call.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ],
                      ),

                       Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              "Ali Yol Yardım",
                              style: TextStyle(
                                  color: Color(0xff8dc63f),
                                  fontFamily: "Balo",
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: InkWell(
                              onTap: () {
                                customLaunch("tel:05532824860");
                              },
                              child: Image.asset(
                                'assets/images/call.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ],
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
