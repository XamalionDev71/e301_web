import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _token;

  login(String email, String password) {
    //TODO:implementar petición HTTP
    this._token = 'agshjgjq.jhshjdashjasd.iukj';
    print('Almacenar JWT: $_token');

    //TODO: navegar al dashboard

    notifyListeners();
  }
}
