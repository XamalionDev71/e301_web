import 'package:flutter/material.dart';

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthProvider extends ChangeNotifier {
  String? _token;
  AuthStatus authStatus = AuthStatus.checking;

  AuthProvider() {
    this.isAuthenticated();
  }

  login(String email, String password) {
    //TODO:implementar petición HTTP
    this._token = 'agshjgjq.jhshjdashjasd.iukj';
    print('Almacenar JWT: $_token');

    //TODO: navegar al dashboard

    notifyListeners();
  }

  Future<bool> isAuthenticated() async {

    return true;
  }
}
