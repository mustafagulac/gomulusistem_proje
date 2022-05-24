import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BulunanEsyalarPage extends StatefulWidget {
  const BulunanEsyalarPage({Key? key}) : super(key: key);

  @override
  _BulunanEsyalarPageState createState() => _BulunanEsyalarPageState();
}

class _BulunanEsyalarPageState extends State<BulunanEsyalarPage> {

  final _firestore = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {

      CollectionReference BulunanEsyaRef = _firestore.collection('EsyaBuldum');

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
                            "BULUNAN EŞYALAR",
                            textAlign: TextAlign.center,
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

                StreamBuilder<QuerySnapshot>(
                    stream: BulunanEsyaRef.snapshots(),
                    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if(!snapshot.hasData){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }



                      return SizedBox(
                        height: 480,
                        child: ListView(
                            children: snapshot.data!.docs.map((DocumentSnapshot document) {
                              return Card(
                                child: ListTile(
                                  title: Text(document['BulunanEsyaMesaj'],
                                  style: TextStyle(fontSize: 20,fontFamily: 'Balo'),
                                  
                                  ),
                                  
                                  ),
                              );
                      
                            }).toList(),
                          ),
                      );


                    }
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
