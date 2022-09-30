import 'package:flutter/material.dart';

class TransferirScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TransferirScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        onVerticalDragEnd: (DragEndDetails details) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("Transferir"),
            ),
            body: SingleChildScrollView(
                child: Column(children: const <Widget>[
                  Text("Diseñar transferir"),
                ]
                )
            )
        )
    );
  }
}