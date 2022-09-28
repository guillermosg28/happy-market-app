import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: MaterialColor(
          const Color.fromRGBO(229, 0, 1, 1).value,
          const <int, Color>{
            50: Color.fromRGBO(229, 0, 1, 0.1),
            100: Color.fromRGBO(229, 0, 1, 0.2),
            200: Color.fromRGBO(229, 0, 1, 0.3),
            300: Color.fromRGBO(229, 0, 1, 0.4),
            400: Color.fromRGBO(229, 0, 1, 0.5),
            500: Color.fromRGBO(229, 0, 1, 0.6),
            600: Color.fromRGBO(229, 0, 1, 0.7),
            700: Color.fromRGBO(229, 0, 1, 0.8),
            800: Color.fromRGBO(229, 0, 1, 0.9),
            900: Color.fromRGBO(229, 0, 1, 1),
          },
        ),
      ),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            key: Key('name'),
            autofillHints: [AutofillHints.name],
            decoration: InputDecoration(labelText: 'Name'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      onVerticalDragEnd: (DragEndDetails details) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Woolha.com Flutter Tutorial'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: _buildForm(),
          ),
        ),
      ),
    );
  }
}