import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Otobus_TakipPage extends StatefulWidget {
  const Otobus_TakipPage({Key? key}) : super(key: key);

  @override
  _Otobus_TakipPageState createState() => _Otobus_TakipPageState();
}

class _Otobus_TakipPageState extends State<Otobus_TakipPage> {
  final _firestore = FirebaseFirestore.instance;
  late GoogleMapController _controller;
  var hatlar;
  var defaultHat = true;
  double enlem = 58.0;
  double boylam = 43.0;

  var baslangicKonum;

  Completer<GoogleMapController> haritaKontrol = Completer();

  @override
  Widget build(BuildContext context) {
    CollectionReference HatlarRef = _firestore.collection('Hatlar');
    CollectionReference KonumRef = _firestore.collection('Konum');

    KonumRef.snapshots().listen((data) =>
        data.docs.forEach((doc) => enlem = double.parse(doc['Enlem'])));
    KonumRef.snapshots().listen((data) =>
        data.docs.forEach((doc) => boylam = double.parse(doc['Boylam'])));

    baslangicKonum = CameraPosition(target: LatLng(enlem, boylam), zoom: 4);

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
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 40),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.30,
                          child: Image.asset(
                            "assets/images/takip.png",
                            width: 140,
                            height: 140,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: Text("OTOBÜSÜM NEREDE?",
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
                              builder: (BuildContext context,
                                  AsyncSnapshot<QuerySnapshot> snapshot) {
                                if (!snapshot.hasData) {
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
                                    });
                              }),
                        ),
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
                          width: MediaQuery.of(context).size.width * 0.85,
                          alignment: Alignment.center,
                          height: 450,
                          child: StreamBuilder<QuerySnapshot>(
                              stream: KonumRef.snapshots(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<QuerySnapshot> snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: SizedBox(
                                    height: 400,
                                    width: MediaQuery.of(context).size.width * 0.8,
                                  
                                    child: GoogleMap(
                                      mapType: MapType.normal,
                                      markers: {
                                        Marker(
                                            position: LatLng(
                                              snapshot.data!.docs.singleWhere(
                                                  (element) => true)['latitude'],
                                              snapshot.data!.docs.singleWhere(
                                                  (element) => true)['longitude'],
                                            ),
                                            markerId: MarkerId('id'),
                                            icon: BitmapDescriptor
                                                .defaultMarkerWithHue(
                                                    BitmapDescriptor.hueMagenta)),
                                      },
                                      initialCameraPosition: CameraPosition(
                                          target: LatLng(
                                            snapshot.data!.docs.singleWhere(
                                                (element) => true)['latitude'],
                                            snapshot.data!.docs.singleWhere(
                                                (element) => true)['longitude'],
                                          ),
                                          zoom: 16),
                                      onMapCreated:
                                          (GoogleMapController controller) async {
                                        setState(() {
                                          _controller = controller;
                                        });
                                      },
                                    ),
                                  ),
                                );
                              }),
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
