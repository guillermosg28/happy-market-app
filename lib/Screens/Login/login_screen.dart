import 'package:flutter/material.dart';
import 'package:happy_market_app/constants.dart';
import 'package:happy_market_app/Screens/Menu/menu_screen.dart';
class LoginScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    void _toggleObscured() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        onVerticalDragEnd: (DragEndDetails details) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/header.png'),
                          fit: BoxFit.fitHeight)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.00),
                  child: Image(
                    image: AssetImage('assets/images/logo_rojo.png'),
                    width: 150,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 20.00),
                    child: Text(
                      'Iniciar Sesión',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 24.00,
                        fontFamily: 'Outfit',
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.00, left: 25.00, right: 25.00),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "DNI",
                      contentPadding: const EdgeInsets.all(15.0),
                      isDense: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.account_box, size: 24),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.00, left: 25.00, right: 25.00),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      contentPadding: const EdgeInsets.all(15.0),
                      isDense: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(),
                      ),
                      prefixIcon: const Icon(Icons.lock_rounded, size: 24),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: _toggleObscured,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60.00, left: 25.00, right: 25.00),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: const Size.fromHeight(48),
                        backgroundColor: happyPrimaryColor),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MenuScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
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
