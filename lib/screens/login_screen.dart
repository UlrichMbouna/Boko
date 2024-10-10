import 'package:flutter/material.dart';
import 'package:boko/services/auth_service.dart'; // Mettez à jour le chemin d'importation

class LoginScreen extends StatelessWidget {
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            authService.login(); // Appelle la méthode login
          },
          child: Text('Login with Keycloak'),
        ),
      ),
    );
  }
}
