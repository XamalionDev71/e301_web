import 'package:e301_web/ui/layouts/widgets/background_image.dart';
import 'package:e301_web/ui/views/custom_title.dart';
import 'package:e301_web/ui/views/links_bars.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Desktop
          _DesktopBody(child: child,),
          //Mobile

          //LinksBar
          LinksBars(),
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;

  const _DesktopBody({
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height*0.9,
      color: Colors.amber,
      child: Row(
        children: [
          //Imagen
          BackgroundImage(),
          Expanded(child: Container(color: Colors.purple)),
          //View
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                CustomTitle(),
                SizedBox(
                  height: 50,
                ),
                Expanded(child: child),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
