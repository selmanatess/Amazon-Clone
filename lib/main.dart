import 'package:amazonclonee/layout/screen_layout.dart';
import 'package:amazonclonee/screens/home_screen.dart';
import 'package:amazonclonee/screens/sign_in_screen.dart';

import 'package:amazonclonee/utils/color.themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB3FgvmoFxXojp_aT1xCzqFWzi_rkYpVFs",
            authDomain: "clone-fb220.firebaseapp.com",
            projectId: "clone-fb220",
            storageBucket: "clone-fb220.appspot.com",
            messagingSenderId: "555364811013",
            appId: "1:555364811013:web:9b6d542904681cf04d376c"));
  } else {
    Firebase.initializeApp();
  }
  runApp(const AmazonClone());
}

class AmazonClone extends StatelessWidget {
  const AmazonClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Amazone Clone",
        color: backgroundColor,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: backgroundColor),
        home: (StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, AsyncSnapshot<User?> user) {
            if (user.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              );
            } else if (user.hasData) {
              return const ScreenLayout();
            } else {
              return const SignInScreen();
            }
          },
        )));
  }
}
