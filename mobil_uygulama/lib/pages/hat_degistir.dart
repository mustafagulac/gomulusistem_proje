import 'package:flutter/material.dart';

class Hat_DegistirPage extends StatefulWidget {
  const Hat_DegistirPage({Key? key}) : super(key: key);

  @override
  _Hat_DegistirPageState createState() => _Hat_DegistirPageState();
}

class _Hat_DegistirPageState extends State<Hat_DegistirPage> {
  String dropdownvalue = '7A';

  // List of items in our dropdown menu
  var items = [
    '7A',
    '7',
    'A1',
    '16',
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
                        width: MediaQuery.of(context).size.width * 0.40,
                        child: Image.asset(
                          "assets/images/change.png",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Text("      HAT DEĞİŞTİR",
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
                            child: Text("MEVCUT HAT",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30)),
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
                                    Color(0xff14878c),
                                    Color(0xff13acba)
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
                            child: Text("YENİ HAT",
                                style: TextStyle(
                                    color: Color(0xff8dc63f),
                                    fontFamily: "Balo",
                                    fontSize: 30)),
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
                                    Color(0xffd8772a),
                                    Color(0xfff5943d)
                                  ],
                                  tileMode: TileMode.repeated,
                                ),
                              ),
                              child: DropdownButton(
                                // Initial Value
                                value: dropdownvalue,
                                menuMaxHeight: 200,
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),
                                iconSize: 30,
                                iconDisabledColor: Colors.white ,
                                iconEnabledColor: Colors.white,
                                itemHeight: 60,
                                dropdownColor: Color(0xfff5943d),
                                style: TextStyle(
                                  fontFamily: "Balo",
                                  fontSize: 40,
                                  color: Colors.white,
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
                              margin: EdgeInsets.only(bottom: 20)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 0, 0),
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
                              Color(0xffbc2a2b),
                              Color(0xffef6853)
                            ],
                            tileMode: TileMode.repeated,
                          ),
                        ),
                        child: Text(
                          "Değiştir",
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
    );
  }
}
