import 'package:e301_web/ui/shared/widgets/logo.dart';
import 'package:e301_web/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          //Logo
          Logo(),
          SizedBox(height: 50),

          //Opciones
          TextSeparator(text: 'main'),

        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xff092044),
        Color(0xff092042),
      ]
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black38,
        blurRadius: 10,
      )
    ]
  );
}