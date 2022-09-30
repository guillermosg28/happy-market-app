import 'package:flutter/material.dart';
import 'package:happy_market_app/constants.dart';
import 'components/card_menu.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4.5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: <Widget>[
                      createGridMenuItem(0),
                      createGridMenuItem(1),
                      createGridMenuItem(2),
                      createGridMenuItem(3),
                      createGridMenuItem(4),
                      createGridMenuItem(5),
                      createGridMenuItem(6),
                    ],
                  ),
                ))
          ]),
          Container(
            height: MediaQuery.of(context).size.height / 3.8,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/menu_header.png'),
                    fit: BoxFit.fitHeight)),
            child: Stack(children: <Widget>[
              Positioned(
                child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.00,right: 20.00),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 35.0,
                        width: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.00),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/users/guillermo.jpg"),
                            fit: BoxFit.cover, //change image fill type
                          ),
                        ),
                      ),
                    ),
                  ),

              ),
              Positioned(
                  child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Center(
                  child: Text(
                    "Hi, Guillermo",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Outfit',
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
              Positioned(
                  child: Container(
                margin: const EdgeInsets.only(top: 70),
                child: const Center(
                  child: Text(
                    "Administrador",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Outfit',
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              )),
            ]),
          ),
        ],
      ),
    );
  }
}

