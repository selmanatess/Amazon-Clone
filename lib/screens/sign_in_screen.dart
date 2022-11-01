// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:amazonclonee/layout/screen_layout.dart';
import 'package:amazonclonee/resources/authentication_methods.dart';
import 'package:amazonclonee/screens/sign_up_screen.dart';
import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/constants.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/costum_main_button.dart';
import 'package:amazonclonee/widget/text_field_widget.dart';

import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Authenticationmethods authenticationmethods = Authenticationmethods();
  bool isLoading = false;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = Utils().getScreenSize();
    return Scaffold(
      body: SingleChildScrollView(
        //Kutunun içini kaydırır
        child: SizedBox(
          height: screensize.height,
          width: screensize.width,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(amazonLogo, height: screensize.height * 0.1),
                    Container(
                      padding: const EdgeInsets.all(25),
                      height: screensize.height * 0.6,
                      width: screensize.width * 0.8,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "GİRİŞ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                            ),
                          ),
                          TextFieldWidget(
                            hinText: "Email girin",
                            controller: emailController,
                            obscureText: false,
                            title: "Email",
                          ),
                          TextFieldWidget(
                            hinText: "Şifrenizi girin",
                            controller: passwordController,
                            obscureText: true,
                            title: "Şifre",
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CostumMainButton(
                              child: Text(
                                "Giriş Yap",
                                style: TextStyle(
                                    letterSpacing: 0.6, color: Colors.black),
                              ),
                              color: yellowColor,
                              isLoading: isLoading,
                              onPressed: () async {
                                setState(() {
                                  isLoading = true;
                                });

                                String output =
                                    await authenticationmethods.signinUser(
                                        email: emailController.text,
                                        password: passwordController.text);
                                setState(() {
                                  isLoading = false;
                                });
                                if (output == "Giriş başarılı") {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctxt) => ScreenLayout()));
                                } else {
                                  //hata mesajını ekrana yazdırdım
                                  // ignore: use_build_context_synchronously
                                  Utils().showSnackBar(context, output);
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.grey,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Amazon'da yeni misin?",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.grey,
                        ))
                      ],
                    ),
                    CostumMainButton(
                        child: Text(
                          "Amazone hesabı oluştur",
                          style: TextStyle(
                              letterSpacing: 0.1, color: Colors.black),
                        ),
                        color: Colors.grey[400]!,
                        isLoading: false,
                        onPressed: (() {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        }))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
