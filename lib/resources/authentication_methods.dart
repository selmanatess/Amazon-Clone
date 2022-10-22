import 'package:amazonclonee/model/user_details_model.dart';
import 'package:amazonclonee/resources/cloudfirestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authenticationmethods {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  CloudFireStoreClass cloudFireStoreClass = CloudFireStoreClass();
  Future<String> signUpUser(
      {required String name,
      required String adress,
      required String email,
      required String password}) async {
    name.trim();
    adress.trim();
    email.trim();
    password.trim();
    String output = "Bir şeyler yanlış gitti";
    if (name != "" && adress != "" && email != "" && password != "") {
      try {
        await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
        UserDetailModel user = UserDetailModel(
            name: name,
            adress:
                adress); //Nesne oluşturarak kullanıcıya ait adres ve ad yüklemesi
        await cloudFireStoreClass.uploadNameAndAdressToDatabase(user: user);
        output = "Kayıt başarılı";
      } on FirebaseAuthException catch (e) {
        if (e.message.toString() ==
            "Password should be at least 6 characters") {
          output = "Lütfen daha güçlü bir şifre oluşturun";
        }
      }
    } else {
      output = "Bilgileri doğru girdiğinizden emin olun";
    }
    return output;
  }

  Future<String> signinUser(
      {required String email, required String password}) async {
    email.trim();
    password.trim();
    String output = "Bir şeyler yanlış gitti";
    print(email);
    if (email != "" && password != "") {
      try {
        await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        output = "Giriş başarılı";
      } on FirebaseAuthException catch (e) {
        {
          output = e.message.toString();
        }
      }
    } else {
      output = "Bilgileri doğru girdiğiniden emin olun";
    }
    return output;
  }
}
