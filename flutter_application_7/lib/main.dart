import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Sign-In Demo',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<void> _handleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final String? jwtToken = await getJwtToken(googleSignInAccount);
        if (jwtToken != null) {
          // Handle the JWT token as needed (e.g., store it, navigate to the next screen)
          print('Received JWT token: $jwtToken');
        } else {
          // Handle error
          print('Failed to receive JWT token.');
        }
      }
    } catch (error) {
      print('Error during Google Sign-In: $error');
    }
  }

  Future<String?> getJwtToken(GoogleSignInAccount googleSignInAccount) async {
    final String serverEndpoint = 'YOUR_SERVER_ENDPOINT'; // Replace with your server endpoint

    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final Map<String, dynamic> requestData = {
      'idToken': googleSignInAuthentication.idToken,
      // Add any other necessary data you want to send to the server
    };

    try {
      final http.Response response = await http.post(
        Uri.parse('$serverEndpoint/your_jwt_generation_endpoint'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final String jwtToken = data['jwtToken'];
        return jwtToken;
      } else {
        print('Failed to get JWT token. Server response: ${response.body}');
        return null;
      }
    } catch (error) {
      print('Error during JWT token request: $error');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _handleSignIn(context),
          child: Text('Sign in with Google'),
        ),
      ),
    );
  }
}
