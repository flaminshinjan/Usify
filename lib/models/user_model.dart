class UserModel {
  final int id;
  final String uid;
  final String password;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String avatar;
  final String gender;
  final String phoneNumber;
  final String dateOfBirth;
  final Map<String, dynamic> employment;
  final Map<String, dynamic> address;
  final Map<String, dynamic> creditCard;
  final Map<String, dynamic> subscription;

  UserModel({
    required this.id,
    required this.uid,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.avatar,
    required this.gender,
    required this.phoneNumber,
    required this.dateOfBirth,
    required this.employment,
    required this.address,
    required this.creditCard,
    required this.subscription,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      uid: json['uid'],
      password: json['password'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
      email: json['email'],
      avatar: json['avatar'],
      gender: json['gender'],
      phoneNumber: json['phone_number'],
      dateOfBirth: json['date_of_birth'],
      employment: json['employment'],
      address: json['address'],
      creditCard: json['credit_card'],
      subscription: json['subscription'],
    );
  }
}
