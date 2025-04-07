import 'package:e301_web/config/router/router.dart';
import 'package:e301_web/ui/buttons/custom_outlined_button.dart';
import 'package:e301_web/ui/buttons/links_text.dart';
import 'package:e301_web/ui/inputs/custom_inputs.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Correo Electrónico',
                    icon: Icons.email_outlined,
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: CustomInputs.loginInputDecoration(
                    hint: '******',
                    label: 'Contraseña',
                    icon: Icons.lock_clock_outlined,
                  ),
                ),
                SizedBox(height: 20),
                CustomOutlinedButton(
                  onPressed: (){},
                  text: 'Ingresar',
                  isFilled: true,
                ),
                SizedBox(height: 20),
                LinksText(
                  text: 'Nueva Cuenta',
                  onPressed: (){
                    Navigator.pushNamed(context, Flurorouter.registerRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}