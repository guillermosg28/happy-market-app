import 'package:flutter/material.dart';
import 'package:happy_market_app/Screens/Perfil/perfil_screen.dart';
import 'package:happy_market_app/Components/app_bar_component.dart';

class VentasScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<VentasScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        onVerticalDragEnd: (DragEndDetails details) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.white,
            //appBar: appBarHappyMarket(text: "a"),
            body: SingleChildScrollView(
                child: Column(children: const <Widget>[
                  Text("Diseñar ventas"),
                ]
                )
            )
        )
    );
  }
}
