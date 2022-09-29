import 'package:flutter/material.dart';
import 'package:happy_market_app/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: Icon(Icons.menu),
          title: Text(
            "Menu",
            textAlign: TextAlign.center,
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                    createGridItem(6),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var name_menu = '';
    var url_image = 'assets/images/menu/ventas.png';

    switch (position) {
      case 0:
        name_menu = 'Ventas';
        url_image = 'assets/images/menu/ventas.png';
        break;
      case 1:
        name_menu = 'Compras';
        url_image = 'assets/images/menu/compras.png';
        break;
      case 2:
        name_menu = 'Productos';
        url_image = 'assets/images/menu/productos.png';
        break;
      case 3:
        name_menu = 'Anexos';
        url_image = 'assets/images/menu/anexos.png';
        break;
      case 4:
        name_menu = 'Transferir';
        url_image = 'assets/images/menu/transferir.png';
        break;
      case 5:
        name_menu = 'Reportes';
        url_image = 'assets/images/menu/reportes.png';
        break;
      case 6:
        name_menu = 'Configuración';
        url_image = 'assets/images/menu/configuracion.png';
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 10.0, right: 10, bottom: 17, top: 17),
        child: Card(
          elevation: 10,
          color: happySecondaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(19)),
          ),
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image(
                    image: AssetImage(url_image),
                    width: 65,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      name_menu,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Outfit',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
