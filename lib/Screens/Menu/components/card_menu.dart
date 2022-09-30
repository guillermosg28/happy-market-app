import 'package:flutter/material.dart';
import 'package:happy_market_app/constants.dart';
import 'package:happy_market_app/Screens/Ventas/ventas_screen.dart';
import 'package:happy_market_app/Screens/Compras/compras_screen.dart';
import 'package:happy_market_app/Screens/Productos/productos_screen.dart';
import 'package:happy_market_app/Screens/Anexos/anexos_screen.dart';
import 'package:happy_market_app/Screens/Transferir/transferir_screen.dart';
import 'package:happy_market_app/Screens/Reportes/reportes_screen.dart';
import 'package:happy_market_app/Screens/Configuracion/configuracion_screen.dart';

Widget createGridMenuItem(int position) {
  var name_menu = '';
  var url_image = 'assets/images/menu/ventas.png';
  var screen = null;

  switch (position) {
    case 0:
      name_menu = 'Ventas';
      url_image = 'assets/images/menu/ventas.png';
      screen = VentasScreen();
      break;
    case 1:
      name_menu = 'Compras';
      url_image = 'assets/images/menu/compras.png';
      screen = ComprasScreen();
      break;
    case 2:
      name_menu = 'Productos';
      url_image = 'assets/images/menu/productos.png';
      screen = ProductosScreen();
      break;
    case 3:
      name_menu = 'Anexos';
      url_image = 'assets/images/menu/anexos.png';
      screen = AnexosScreen();
      break;
    case 4:
      name_menu = 'Transferir';
      url_image = 'assets/images/menu/transferir.png';
      screen = TransferirScreen();
      break;
    case 5:
      name_menu = 'Reportes';
      url_image = 'assets/images/menu/reportes.png';
      screen = ReportesScreen();
      break;
    case 6:
      name_menu = 'Configuración';
      url_image = 'assets/images/menu/configuracion.png';
      screen = ConfiguracionScreen();
      break;
  }

  return Builder(builder: (context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 20.00, right: 20.00, bottom: 15.00, top: 15.00),
      child: Card(
        elevation: 10,
        color: happySecondaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19)),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return screen;
                },
              ),
            );
          },

          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image(
                  image: AssetImage(url_image),
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
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