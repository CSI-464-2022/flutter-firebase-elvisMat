import 'package:csi464/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else {
          return  SignInScreen(
          headerBuilder: (context, constraints, _) {
            return Padding(padding: const EdgeInsets.all(20),
            child: AspectRatio(
                aspectRatio: 1,
                child: Image.network('https://firebase.flutter.dev/img/flutterfire_300x.png'),
              ),
            );
            },
            providerConfigs: const [
              EmailProviderConfiguration(),
            ],
          );
        }
      },
    );
  }
}
