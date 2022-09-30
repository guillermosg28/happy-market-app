import 'package:flutter/material.dart';
import 'package:happy_market_app/Screens/Perfil/perfil_screen.dart';

class AppBarHappyMarket extends StatelessWidget implements PreferredSizeWidget {

  const AppBarHappyMarket({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title), actions: <Widget>[
      IconButton(
        icon: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/users/guillermo.jpg"),
          radius: 19.0,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PerfilScreen();
              },
            ),
          );
        },
      )
    ]
    );
  }
}
