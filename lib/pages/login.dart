import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget{
  Login({Key key}) : super(key: key);


  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
        title: Text("Login",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            color: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded,
              color: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
            ),
            onPressed: () => Scaffold.of(context).openDrawer()
          ),
        ),
        backgroundColor: Color.fromARGB(0xff, 0x88, 0xc9, 0xbf),
      ),
      drawer: Drawer(
        child: null,
      ),
      body: SafeArea (
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14,
                        color: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
                      ),
                      decoration: InputDecoration(
                          hintText: "Nome de usuário",
                          hintStyle: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 14,
                            color: Color.fromARGB(0xff, 0xbd, 0xbd, 0xbd),
                          )
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14,
                        color: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
                      ),
                      decoration: InputDecoration(
                          hintText: "Senha",
                          hintStyle: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 14,
                            color: Color.fromARGB(0xff, 0xbd, 0xbd, 0xbd),
                          )
                      ),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                  ],
                ),
                _renderButton(
                  name: "ENTRAR",
                  textColor: Color.fromARGB(0xff, 0x43, 0x43, 0x43),
                  backgroundColor: Color.fromARGB(0xff, 0x88, 0xc9, 0xbf),
                  callback: ()=>{},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
