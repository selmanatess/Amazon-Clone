class UserDetailModel {
  final String name;
  final String adress;
  UserDetailModel({required this.name, required this.adress});
  //Text'den aldığımız Verileri firebase'e parametre olarak gönderme
  Map<String, dynamic> getJson() => {
        'name': name,
        'adress': adress,
      };
}
