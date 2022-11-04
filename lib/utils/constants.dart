import 'package:amazonclonee/screens/account.screen.dart';
import 'package:amazonclonee/screens/cart_screen.dart';
import 'package:amazonclonee/screens/home_screen.dart';
import 'package:amazonclonee/widget/simple_product_widget.dart';
import 'package:flutter/material.dart';

const double kAppBarHeight = 80;
const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const List<String> categoriesList = [
  "Premium",
  "Telefonlar",
  "Moda",
  "Elektronik",
  "Ev",
  "Yiyecek çük",
  "Ev aletleri",
  "Kitaplar ve Oyuncaklar",
  "Kozmetik"
];
const List<Widget> screens = [
  CardScreen(),
  accountScreen(),
  HomeScreen(),
  Center(
    child: Text("Daha Fazla Ekran"),
  )
];

const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Ödemeler",
  "TL/Paket Yükle",
  "Hediye Kuponlarım",
  "Faturanı Öde"
];
List<Widget> sebzeMeyve = [
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2021/01/05/05/30/grapes-5889697_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2010/12/13/10/05/berries-2277_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/08/11/08/04/vegetables-1584999_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2015/03/14/14/00/carrots-673184_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/05/16/22/47/onions-1397037__340.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/02/17/19/14/peas-1205673_960_720.jpg"),
];
List<Widget> evEsyasi = [
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/12/19/08/39/mobile-phone-1917737_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/11/19/15/32/laptop-1839876_960_720.jpg"),
  const SimpleProductWidget(
      url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png"),
  const SimpleProductWidget(
      url: "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg"),
  const SimpleProductWidget(
      url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png"),
];
List<Widget> teknolojiAletleri = [
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2022/02/21/06/47/applications-7025904_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://images.pexels.com/photos/4068317/pexels-photo-4068317.jpeg?cs=srgb&dl=pexels-cottonbro-4068317.jpg&fm=jpg&_gl=1*bnj6x6*_ga*MTg5NzU1OTcxMi4xNjY2NDMzODU1*_ga_8JE65Q40S6*MTY2NjQzMzg1Ni4xLjEuMTY2NjQzMzg3Ni4wLjAuMA.."),
  const SimpleProductWidget(
      url:
          "https://images.pexels.com/photos/4740585/pexels-photo-4740585.jpeg?cs=srgb&dl=pexels-ksenia-chernaya-4740585.jpg&fm=jpg&_gl=1*p476d3*_ga*MTg5NzU1OTcxMi4xNjY2NDMzODU1*_ga_8JE65Q40S6*MTY2NjQzMzg1Ni4xLjEuMTY2NjQzNDAwOC4wLjAuMA.."),
  const SimpleProductWidget(
      url:
          "https://images.pexels.com/photos/213162/pexels-photo-213162.jpeg?cs=srgb&dl=pexels-photomix-company-213162.jpg&fm=jpg&_gl=1*1xa78dg*_ga*MTg5NzU1OTcxMi4xNjY2NDMzODU1*_ga_8JE65Q40S6*MTY2NjQzMzg1Ni4xLjEuMTY2NjQzNDEyMi4wLjAuMA.."),
  const SimpleProductWidget(
      url: "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg"),
  const SimpleProductWidget(
      url: "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png"),
];

//Dont even attemp to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

List<Widget> siparislerim = [
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2022/10/31/17/31/copper-teapots-7560392_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2020/01/14/09/51/wine-glass-4764613_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2017/08/17/08/20/online-shopping-2650383_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2015/03/14/14/00/carrots-673184_960_720.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/05/16/22/47/onions-1397037__340.jpg"),
  const SimpleProductWidget(
      url:
          "https://cdn.pixabay.com/photo/2016/02/17/19/14/peas-1205673_960_720.jpg"),
];
List<String> tammalanansiparisler = [
  "Çaydanlık",
  "Bardak",
  "Çanta",
  "Telefon",
  "Bilgisayar"
];
