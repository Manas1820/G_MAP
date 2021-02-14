import 'package:cloud_firestore/cloud_firestore.dart';

class UserDetails {
  String userId;
  String name;
  String profileImage;
  String emailId;
  String gender;
  double maxLimit;
  double profit;
  double currBalance;
  String ph;

  UserDetails(
      {this.userId,
      this.name,
      this.profileImage,
      this.emailId,
      this.gender,
      this.maxLimit,
      this.profit,
      this.currBalance,
      this.ph});

  UserDetails.loadUser(this.userId, this.name, this.profileImage, this.emailId,
      this.gender, this.maxLimit, this.profit, this.currBalance, this.ph);

  UserDetails.newuser(userId, name, profileImage, emailId, ph) {
    this.userId = userId;
    this.name = name;
    this.profileImage = profileImage;
    this.emailId = emailId;
    this.gender = "None";
    this.maxLimit = 0;
    this.profit = 0;
    this.currBalance = 0;
    this.ph = ph;
  }

  Map<String, dynamic> toJson() => {
        'userId': this.userId,
        'name': this.name,
        'profileImage': this.profileImage,
        'email': this.emailId,
        'gender': this.gender,
        'limit': this.maxLimit,
        'profit': this.profit,
        'balance': this.currBalance,
        'ph': this.ph ?? ""
      };
  factory UserDetails.fromJson(QueryDocumentSnapshot snapshot) {
    var data = snapshot.data();
    return UserDetails(
        userId: data['userId'],
        name: data['name'],
        profileImage: data['profileImage'],
        emailId: data['email'],
        gender: data['gender'],
        maxLimit: data['limit'],
        profit: data['profit'],
        currBalance: data['balance'],
        ph: data['ph']);
  }
}
