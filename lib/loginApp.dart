import 'dart:ui';

import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String email = '';
  String password = '';
  Color topColor = Colors.red;
  Color bottomColor = Colors.purple[400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [topColor, bottomColor],
          ),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, //vertcal-Principal
              crossAxisAlignment: CrossAxisAlignment.stretch, //cada
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Image.asset(
                    "assets/imagens/kkgg.png",
                    height: 125,
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                            children: [
                              TextFormField(
                                onChanged: (text) {
                                  email = text;
                                },
                                keyboardType: TextInputType.emailAddress,
                                autofocus: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: "E-mail",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  labelStyle: TextStyle(color: Colors.white),
                                  prefix: Icon(
                                    Icons.mail_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                onChanged: (text) {
                                  password = text;
                                },
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                autofocus: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  labelStyle: TextStyle(color: Colors.white),
                                  prefix: Icon(
                                    Icons.open_in_browser,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        textColor: Colors.white,
                        onPressed: () {
                          if (email == 'iago111996@gmail.com' &&
                              password == '123') {
                            //metodo pra navegar entre paginas forçcando
                            //push => mantem o login
                            //pushReplacement => despresa a outra page
                            /*Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );*/

                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('Incorreto');
                          }
                        },
                        child: Text("Entrar"),
                      ),
                    ],
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
