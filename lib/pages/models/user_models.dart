import 'dart:math';

class UserModel {
  late int id;
  late String name;
  late String nip;
  late String kota;
  late String alamat;
  late String agama;
  late String tanggal_lair;
  late String no_hp;
  late String email;
  late String token;

  UserModel(
      {required this.id,
      required this.name,
      required this.nip,
      required this.kota,
      required this.alamat,
      required this.agama,
      required this.tanggal_lair,
      required this.no_hp,
      required this.email,
      required this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nip = json['nip'];
    kota = json['kota'];
    alamat = json['alamat'];
    agama = json['agama'];
    tanggal_lair = json['tanggal_lahir'];
    no_hp = json['no_hp'];
    email = json['email'];
    token = json['token'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'nip': nip,
      'kota': kota,
      'alamat': alamat,
      'agama': agama,
      'tanggal_lahir': tanggal_lair,
      'no_hp': no_hp,
      'email': email,
      'token': token,
    };
  }
}
