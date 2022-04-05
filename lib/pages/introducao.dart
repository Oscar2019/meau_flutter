import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Introducao extends StatefulWidget{
  Introducao({Key key}) : super(key: key);


  @override
  _IntroducaoState createState() => _IntroducaoState();
}

class _IntroducaoState extends State<Introducao> {

  Widget _renderButton(
      {String name,
      Color textColor,
      Color backgroundColor,
      VoidCallback callback}){
    return TextButton(
      onPressed: callback,
      child: Text(name,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 12,
          color: textColor,
        ),
      ),
      style: ButtonStyle(
        // MaterialStateProperty<OutlinedBorder?>
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(232, 40),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded,
              color: Color.fromARGB(0xff, 0x88, 0xc9, 0xbf),
            ),
            onPressed: () => Scaffold.of(context).openDrawer()
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: null,
      ),
      body: SafeArea (
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Olá!",
                style: TextStyle(
                  fontFamily: "Courgette",
                  fontSize: 72,
                  color: Color.fromARGB(0xff, 0xff, 0xd3, 0x58),
                ),
              ),
              Text("Bem vindo ao Meau!\nAqui você pode adotar, doar e ajudar\ncães e gatos com facilidade.\nQual o seu interesse?",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 16,
                  color: Color.fromARGB(0xff, 0x75, 0x75, 0x75),
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: <Widget>[
                  _renderButton(
                    name: "ADOTAR",
                    textColor: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
                    backgroundColor: Color.fromARGB(0xff, 0xff, 0xd3, 0x58),
                    callback: ()=>{},
                  ),
                  _renderButton(
                    name: "AJUDAR",
                    textColor: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
                    backgroundColor: Color.fromARGB(0xff, 0xff, 0xd3, 0x58),
                    callback: ()=>{},
                  ),
                  _renderButton(
                    name: "CADASTRAR ANIMAL",
                    textColor: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
                    backgroundColor: Color.fromARGB(0xff, 0xff, 0xd3, 0x58),
                    callback: ()=>{},
                  ),
                ],
              ),
              _renderButton(
                name: "login",
                textColor: Color.fromARGB(0xff, 0x88, 0xc9, 0xbf),
                backgroundColor: Colors.transparent,
                callback: ()=>{ Navigator.pushNamed(context, "/login")},
              ),
              Image(
                image: AssetImage("assets/images/Meau_marca_2.png"),
                width: 122,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
