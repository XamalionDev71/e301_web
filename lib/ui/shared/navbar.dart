import 'package:e301_web/ui/shared/widgets/navbar_avatar.dart';
import 'package:e301_web/ui/shared/widgets/notification_indicator.dart';
import 'package:e301_web/ui/shared/widgets/search_text.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: buildBoxDecoration(),
      child: Row(
        children: [
          //icono del menu
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu_outlined)
          ),

          //caja de busqueda
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250),
            child: SearchText(),
          ),

          //Notificaciones
          Spacer(),
          NotificationIndicator(),

          //Avatar
          SizedBox(width: 10),
          NavbarAvatar(),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 5
      )
    ]
  );
}