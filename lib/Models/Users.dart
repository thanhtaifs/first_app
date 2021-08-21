class Users
{
  String _userName;

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  String _passWord;

  String get passWord => _passWord;

  set passWord(String value) {
    _passWord = value;
  }

  Users(this._userName, this._passWord);

  static List<Users> getAll()
  {
    return [
      Users("Test1", "passWord"),
      Users("Test2", "passWord2"),
    ];
  }
}