import 'package:amazonclonee/model/product_model.dart';
import 'package:amazonclonee/screens/product.screen.dart';
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
    await Firebase.initializeApp();
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
              //return const ScreenLayout();
              return ProductScreen(
                  productModel: ProductModel(
                      url:
                          "https://cdn.pixabay.com/photo/2015/09/05/22/33/office-925806_960_720.jpg",
                      cost: 45000,
                      discount: 0,
                      noOfRating: 1,
                      rating: 3,
                      productName: "Mackbook Bilgisayar",
                      sellerName: "Bahri DOĞRU",
                      sellerUid: "31",
                      uid: "31"));
            } else {
              return const SignInScreen();
            }
          },
        )));
  }
}
