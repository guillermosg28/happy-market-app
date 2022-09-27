import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  bool _obscureText = true;
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/header.png'),
                          fit: BoxFit.fitHeight)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.00),
                  child: Image(
                    image: AssetImage('assets/images/logo_rojo.png'),
                    width: 150,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20.00),
                    child: Text(
                      'Iniciar Sesión',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 24.00,
                        fontFamily: 'Outfit',
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.00, left: 25.00, right: 25.00),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      //labelStyle: Theme.of(context).textTheme.subhead,
                      labelText: "DNI",
                      contentPadding: EdgeInsets.all(15.0),
                      isDense: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.00, left: 25.00, right: 25.00),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        //labelStyle: Theme.of(context).textTheme.subhead,
                        labelText: "Contraseña",
                        contentPadding: EdgeInsets.all(15.0),
                        isDense: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(),
                        ),

                        icon: Icon(passenable == true
                            ? Icons.visibility
                            : Icons.padding)),

                    // suffixIcon: GestureDetector(
                    //   onTap: () {},
                    //   child: Icon(
                    //     _obscureText
                    //         ? Icons.visibility
                    //         : Icons.visibility_off,
                    //     semanticLabel:
                    //         _obscureText ? 'show password' : 'hide password',
                    //   ),
                    // ),
                    //fillColor: Colors.green
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60.00, left: 25.00, right: 25.00),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size.fromHeight(48),
                        backgroundColor: Color.fromRGBO(229, 0, 1, 1)),
                    onPressed: () {},
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
