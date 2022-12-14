// ignore_for_file: sort_child_properties_last, use_build_context_synchronously

import 'package:amazonclonee/resources/authentication_methods.dart';
import 'package:amazonclonee/screens/sign_in_screen.dart';

import 'package:amazonclonee/utils/color.themes.dart';
import 'package:amazonclonee/utils/utils.dart';
import 'package:amazonclonee/widget/costum_main_button.dart';
import 'package:amazonclonee/widget/text_field_widget.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Authenticationmethods authenticationmethods = Authenticationmethods();
  bool isLoading = false;
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    adressController.dispose();
    passwordController.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  Size screensize = Utils().getScreenSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                      height: screensize.height * 0.74,
                      width: screensize.width * 0.75,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Kayıt Ol",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                            ),
                          ),
                          TextFieldWidget(
                            hinText: "İsminizi girin",
                            controller: nameController,
                            obscureText: false,
                            title: "İsim",
                          ),
                          TextFieldWidget(
                            hinText: "Adresinizi girin",
                            controller: adressController,
                            obscureText: false,
                            title: "Adres",
                          ),
                          TextFieldWidget(
                            hinText: "E mail girin",
                            controller: emailController,
                            obscureText: false,
                            title: "E-mail",
                          ),
                          TextFieldWidget(
                            hinText: "Şifrenizi girin",
                            controller: passwordController,
                            obscureText: true,
                            title: "Şifre",
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CostumMainButton(
                              child: const Text(
                                "Kayıt Ol",
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
                                    await authenticationmethods.signUpUser(
                                        name: nameController.text,
                                        adress: adressController.text,
                                        email: emailController.text,
                                        password: passwordController.text);
                                setState(() {
                                  isLoading = false;
                                });

                                if (output == "Kayıt başarılı") {
                                  //kaydolduktan hemen sonra giriş ekranına yönetir

                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const SignInScreen()));
                                } else {
                                  Utils().showSnackBar(context, output);
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CostumMainButton(
                        child: const Text(
                          "Geri",
                          style: TextStyle(
                              letterSpacing: 0.6, color: Colors.black),
                        ),
                        color: Colors.grey[400]!,
                        isLoading: false,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
