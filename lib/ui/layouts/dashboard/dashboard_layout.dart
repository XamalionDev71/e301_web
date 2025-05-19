import 'package:e301_web/providers/sidemenu_provider.dart';
import 'package:e301_web/ui/shared/navbar.dart';
import 'package:e301_web/ui/shared/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
    super.initState();

    SidemenuProvider.menuController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300)
    );
  }

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

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: widget.child,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (size.width < 700) 
            AnimatedBuilder(
              animation: SidemenuProvider.menuController,
              builder: (context, _)=> Stack(
                children: [
                  if(SidemenuProvider.isOpen)
                    Opacity(
                      opacity:SidemenuProvider.opacity.value,
                      child: GestureDetector(
                        onTap: ()=>SidemenuProvider.closeMenu(),
                        child: Container(
                          width: size.width,
                          height: size.height,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  Transform.translate(
                    offset: Offset(SidemenuProvider.movement.value, 0),
                    child: Sidebar(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
