import 'package:flutter/material.dart';

class ProductosScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ProductosScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        onVerticalDragEnd: (DragEndDetails details) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text("Productos"),
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