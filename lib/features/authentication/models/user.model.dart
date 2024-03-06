class UsersModel {
  String? id;
  String? name;
  String email;
  String password;
  DateTime? emailVerifiedAt;
  String? userType;
  DateTime? createdAt;
  DateTime? updatedAt;

  UsersModel({
    required this.password,
    this.id,
    this.name,
    required this.email,
    this.emailVerifiedAt,
    this.userType,
    this.createdAt,
    this.updatedAt,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        id: json["id"],
        name: json["name"],
        password: json[''],
        email: json["email"],
        emailVerifiedAt: json["emailVerifiedAt"],
        userType: json["userType"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "emailVerifiedAt": emailVerifiedAt?.toIso8601String(),
        "userType": userType,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
      };
}
