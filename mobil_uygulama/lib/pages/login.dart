import 'package:akilliulasim_proje/pages/driver_main.dart';
import 'package:akilliulasim_proje/pages/main.dart';
import 'package:akilliulasim_proje/pages/register.dart';
import 'package:akilliulasim_proje/pages/yol_yardim.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "GİRİŞ YAP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff009444),
                  fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı"
                  ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Şifre"
                  ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Şifremi Unuttum",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8dc63f)
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

             Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.5,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(
                          colors: [
                            Color(0xff009444),
                            Color(0xff8dc63f)
                              
                          ]
                        )
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "GİRİŞ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ), 
                    ),
                     onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()))
                } ,
                  ),
                ),
              ),
               
            

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 61, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),))
                } ,
                child: Text(
                  "Hesabınız Yok Mu? Kayıt Olun",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8dc63f)
                  ),
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}