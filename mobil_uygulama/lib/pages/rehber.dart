import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RehberPage extends StatefulWidget {
  const RehberPage({Key? key}) : super(key: key);

  @override
  _RehberPageState createState() => _RehberPageState();
}

class _RehberPageState extends State<RehberPage> {

String dropdownvalue = '7A';

  // List of items in our dropdown menu
  var items = [
    '7A',
    '7',
    'A1',
    '16',
  ];


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
                          "assets/images/rehber.png",
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Text(
                          "REHBER",
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
                        child: DropdownButton(
                          // Initial Value
                          value: dropdownvalue,
                          menuMaxHeight: 200,
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),
                          iconSize: 30,
                          itemHeight: 60,
                          iconDisabledColor: Color(0xff8dc63f),
                          iconEnabledColor: Color(0xff8dc63f),
                          dropdownColor: Colors.white,
                          style: TextStyle(
                            fontFamily: "Balo",
                            fontSize: 40,
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
                              "Ahmet",
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
                              "Mehmet",
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
                              "Veli",
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
                              "Ali",
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
