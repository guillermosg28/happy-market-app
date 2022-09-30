import 'package:flutter/material.dart';
import 'package:happy_market_app/Screens/Perfil/perfil_screen.dart';

Widget appBarHappyMarket(String text) {
  return AppBar(
    title: Text(text),
    actions: <Widget>[
      IconButton(
        icon: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/users/guillermo.jpg"),
          radius: 19.0,
        ), onPressed: () {  },
        // onPressed: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return PerfilScreen();
        //       },
        //     ),
        //   );
        // },
      )
    ],
  );
}