class PasswordModel {
  PasswordModel({
    required this.password,
  });

  String password;

  PasswordModel copyWith({
    String? password,
  }) =>
      PasswordModel(
        password: password ?? this.password,
      );
}