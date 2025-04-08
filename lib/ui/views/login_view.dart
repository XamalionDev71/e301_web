import 'package:e301_web/config/router/router.dart';
import 'package:e301_web/providers/login_form_provider.dart';
import 'package:e301_web/ui/buttons/custom_outlined_button.dart';
import 'package:e301_web/ui/buttons/links_text.dart';
import 'package:e301_web/ui/inputs/custom_inputs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginFormProvider(),
      child: Builder(
        builder: (context) {
          final loginFormProvider = Provider.of<LoginFormProvider>(
            listen: false,
            context,
          );

          return Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.black,
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 370),
                child: Form(
                  key: loginFormProvider.formKey,
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
                      SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese su contraseña';
                          }
                          if (value.length < 6) {
                            return 'La contraseña debe tener al menos 6 caracteres';
                          }
                          return null;
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                          hint: '******',
                          label: 'Contraseña',
                          icon: Icons.lock_clock_outlined,
                        ),
                      ),
                      SizedBox(height: 20),
                      CustomOutlinedButton(
                        onPressed: () {
                          loginFormProvider.validateForm();
                        },
                        text: 'Ingresar',
                        isFilled: true,
                      ),
                      SizedBox(height: 20),
                      LinksText(
                        text: 'Nueva Cuenta',
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            Flurorouter.registerRoute,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
