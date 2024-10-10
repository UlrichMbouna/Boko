import 'package:flutter_appauth/flutter_appauth.dart';

class AuthService {
  final FlutterAppAuth _appAuth = FlutterAppAuth();

  final String _clientId = 'angolar_test';
  final String _redirectUrl =
      'com.example.boko:/oauth2redirect'; // Remplacez par votre URL de redirection
  final String _authIssuer =
      'https://sso.bitkap.africa/realms/bitkap_dev/protocol/openid-connect/auth';
  final String _tokenIssuer =
      'https://sso.bitkap.africa/realms/bitkap_dev/protocol/openid-connect/token';

  Future<void> login() async {
    final AuthorizationTokenRequest request = AuthorizationTokenRequest(
      _clientId,
      _redirectUrl,
      serviceConfiguration: AuthorizationServiceConfiguration(
        authorizationEndpoint: _authIssuer,
        tokenEndpoint: _tokenIssuer,
      ),
      scopes: ['openid', 'profile'],
    );

    try {
      final AuthorizationTokenResponse? response =
          await _appAuth.authorizeAndExchangeCode(request);
      // Gérez la réponse ici (par exemple, stocker le token, etc.)
      print('Access Token: ${response?.accessToken}');
    } catch (e) {
      print('Error during login: $e');
    }
  }
}
