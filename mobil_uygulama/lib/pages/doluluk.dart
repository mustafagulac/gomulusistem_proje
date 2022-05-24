import 'package:akilliulasim_proje/pages/deneme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DolulukPage extends StatefulWidget {
  const DolulukPage({Key? key}) : super(key: key);

  @override
  _DolulukPageState createState() => _DolulukPageState();
}

class _DolulukPageState extends State<DolulukPage> {
  final _firestore = FirebaseFirestore.instance;
  

  // List of items in our dropdown menu
  var hatlar;
  var defaultHat = true;

  @override
  Widget build(BuildContext context) {
    CollectionReference InsanSayimiRef = _firestore.collection('InsanSayimi');
    CollectionReference HatlarRef = _firestore.collection('Hatlar');



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
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 40),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: Image.asset(
                          "assets/images/doluluk.png",
                          width: 140,
                          height: 140,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Text("OTOBÜSÜN DOLULUĞU",
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
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text("HAT: ",
                            style: TextStyle(
                                color: Color(0xff8dc63f),
                                fontFamily: "Balo",
                                fontSize: 40)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: StreamBuilder<QuerySnapshot>(
                    stream: HatlarRef.snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(!snapshot.hasData){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (defaultHat) {
                    hatlar = snapshot.data!.docs[0].get('hatAd');
                      } 



                      return DropdownButton(
                    menuMaxHeight: 200,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    iconSize: 30,
                    itemHeight: 60,
                    dropdownColor: Color(0xff8dc63f),
                          style: TextStyle(
                            fontFamily: "Balo",
                            fontSize: 40,
                            color: Colors.black,
                          ),
                    isExpanded: false,
                    value: hatlar,
                    items: snapshot.data!.docs.map((value) {
                      return DropdownMenuItem(
                        value: value.get('hatAd'),
                        child: Text('${value.get('hatAd')}'),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(
                        () {
                          // Selected value will be stored
                          hatlar = value;
                          // Default dropdown value won't be displayed anymore
                          defaultHat = false;

                        },
                      );
                    }

                      );
                    }
                ),

                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text("KOLTUK SAYISI",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 25)),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.3,
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
                                "Firebase",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Coiny",
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              margin: EdgeInsets.only(bottom: 20)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text("MEVCUT KİŞİ",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 25)),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              alignment: Alignment.center,
                              height: 105,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0xffcc912b),
                                    Color(0xfffbbb40)
                                  ],
                                  tileMode: TileMode.repeated,
                                ),
                              ),
                              child: StreamBuilder<QuerySnapshot>(
                    stream: InsanSayimiRef.snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(!snapshot.hasData){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }



                      return SizedBox(
                        height: 200,
                        child: ListView(
                            children: snapshot.data!.docs.map((DocumentSnapshot document) {
                              return  Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: ListTile(
                                    title: Text(document['mevcut'],
                                    style: TextStyle(fontSize: 40,fontFamily: 'Balo', color: Colors.white),
                                    textAlign: TextAlign.center,
                                    ),
                                    
                                    
                                    ),
                              );
                              
                      
                            }).toList(),
                          ),
                      );


                    }
                ),
                              margin: EdgeInsets.only(bottom: 20)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 40, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text("DURUM: ",
                            style: TextStyle(
                                color: Color(0xff8dc63f),
                                fontFamily: "Balo",
                                fontSize: 40)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(0xff25275a),
                              Color(0xff41499a)
                            ],
                            tileMode: TileMode.repeated,
                          ),
                        ),
                        child: StreamBuilder<QuerySnapshot>(
                    stream: InsanSayimiRef.snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(!snapshot.hasData){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }



                      return SizedBox(
                        height: 200,
                        child: ListView(
                            children: snapshot.data!.docs.map((DocumentSnapshot document) {
                              return  ListTile(
                                    title: Text(document['yogunluk'],
                                    style: TextStyle(fontSize: 30,fontFamily: 'Balo', color: Colors.white),
                                    textAlign: TextAlign.center,
                                    ),
                                    
                                    
                                    );
                              
                              
                      
                            }).toList(),
                          ),
                      );


                    }
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
    );
  }
}


