import 'package:e301_web/ui/shared/navbar.dart';
import 'package:e301_web/ui/shared/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Row(
            children: [
              //TODO: Si es mayor a 700px
              if (size.width >= 700) Sidebar(),

              Expanded(
                child: Column(
                  children: [
                    // Barra de navegación
                    Navbar(),

                    Expanded(child: child),
                  ],
                ),
              ),
            ],
          ),
          if(size.width<700)
            Sidebar(),
        ],
      ),
    );
  }
}
