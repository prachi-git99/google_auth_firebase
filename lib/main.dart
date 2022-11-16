import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  @override
  Future _signIn() async{
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    //to authenticate
    if(googleUser !=null) {
      final GoogleSignInAuthentication googleAuth = await googleUser
          .authentication;
    }
    //   final AuthCredential credential = GoogleAuthProvider.Credential(
    //     accessToken: googleAuth.accessToken,
    //     idToken: googleAuth.idToken,
    //   );
    //
    //   final AuthResult authResult = await _auth.signInWithCredential(credential);
    //   final User user = authResult.user;
    // }
    //
    // return user;

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.black,
              onPressed: (){},
              child: Text(
                'login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.black,
              onPressed: (){},
              child: Text(
                'Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

