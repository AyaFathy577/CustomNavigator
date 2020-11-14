class UserModel{
  final String id;
  final String email;
  final String name;
  final String password;

  UserModel({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'id': id,
  };

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        password= json['password'],
        email = json['email'];
}