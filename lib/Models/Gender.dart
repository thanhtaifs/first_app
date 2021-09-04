class Gender
{
  final int id;
  final String name;
  Gender({
    required this.id,
    required this.name
  });
  static List<Gender> getAll()
  {
    List<Gender> items = [
      Gender(
        id: 1,
        name: "Nam",
      ),
      Gender(
        id: 2,
        name: "Nữ",
      )
    ];
    return items;
  }

}