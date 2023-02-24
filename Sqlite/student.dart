class student {
  String username;
  String password;

  student({required this.username, required this.password});

  Map<String, dynamic> toMap() {
    var m1 = {'username': username, 'password': password};
    return m1;
  }

  @override
  String toString() {
    return "username=$username,password=$password";
  }
}
