
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? name;
  String? email;
  String? password;
  String? userid;
  String? image;
  String? experience;
  String? skill;

  UserModel(
      {this.name,
      this.email,
      this.password,
      this.userid,
      this.experience,
      this.image,
      this.skill});
  factory UserModel.fromjson(DocumentSnapshot data) {
    return UserModel(
        email: data['name'],
        name: data['name'],
        userid: data['userid'],
        experience: data['experience'],
        password: data['password'],
        image: data['image'],
        skill: data['skill']);
  }
  Map<String, dynamic> tojson() {
    return {
      'userid': userid,
      'name': name,
      'email': email,
      'password': password,
      'experience': experience,
      'skill': skill,
      'image': image,
    };
  }
}
