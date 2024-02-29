import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final FirebaseAuth _auth=FirebaseAuth.instance;
  User? _user;
  @override
  void initState(){
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
       _user=event; 
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Google SignIn '),
    ),
    body: _user!= null ? _userInfo():_googleSignInButton(),
    );
  }
  Widget _googleSignInButton(){
    return SizedBox(
      height: 50,
      child: SignInButton(
        Buttons.google,text:"sing up with google ",
        onPressed: _handleGoogleSignIn,
      ),
    );
  }
   Widget _userInfo(){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_user!.photoURL!))
            ),
          ),
          Text(_user!.email!),
          Text(_user!.displayName ?? ""),
          MaterialButton(
            color:Colors.red,
            child:const Text('Sign Out'),
            onPressed: _auth.signOut,
             )
        ],
      )
    );
  }
    void _handleGoogleSignIn(){
      try{
        GoogleAuthProvider _gooleAuthProvider =GoogleAuthProvider();
        _auth.signInWithProvider(_gooleAuthProvider);
      }catch(error){
        print(error);
      }
    }
}