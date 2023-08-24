class UserLogin {
  final List<Map<String, dynamic>> mockUsers = [
    {
      'userId': 123,
      'email': 'huzaifa@gmail.com',
      'userName': 'Huzaifa',
      'userType': 'user',
      'password': 'abc',
    },
    {
      'userId': 456,
      'email': 'ibrahim@gmail.com',
      'userName': 'Ibrahim',
      'userType': 'user',
      'password': 'def',
    }
  ];

  Future<Map<String, dynamic>> login(String userName, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final user = mockUsers.firstWhere(
      (userData) =>
          userData['userName'] == userName && userData['password'] == password,
      orElse: () => {},
    );

    if (user.isNotEmpty) {
      return user;
    } else {
      throw Exception('Invalid username or password.');
    }
  }
}
