import 'package:e301_web/ui/layouts/widgets/background_image.dart';
import 'package:e301_web/ui/views/custom_title.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Desktop
          _DesktopBody(),
          //Mobile

          //LinksBar
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.amber,
      child: Row(
        children: [
          //Imagen
          BackgroundImage(),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
          //View
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                CustomTitle(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
