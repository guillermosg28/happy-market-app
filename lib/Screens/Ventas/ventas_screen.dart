import 'package:flutter/material.dart';

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
            appBar: AppBar(
              title: Text("Ventas"),
              actions: const <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 10.00),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/users/guillermo.jpg"),
                    radius: 20.0,
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
                child: Column(children: const <Widget>[
                  Text("Hola")
                ]
                )
            )
        )
    );
  }
}
