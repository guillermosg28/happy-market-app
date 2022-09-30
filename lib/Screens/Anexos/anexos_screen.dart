import 'package:flutter/material.dart';
import 'package:happy_market_app/Widgets/app_bar_component.dart';

class AnexosScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AnexosScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        onVerticalDragEnd: (DragEndDetails details) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: const AppBarHappyMarket(
              title: 'Anexos',
            ),
            body: SingleChildScrollView(
                child: Column(children: const <Widget>[
                  Text("Diseñar anexos"),
                ]
                )
            )
        )
    );
  }
}