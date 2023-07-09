class homelistcard {
  static List<String> name = [
    "    Midnights [2022]",
    '    folklore [2020]',
    '    Un Verano Sin Ti [2022]',
    '    Rumours [1977]',
    '    evermore [2020]',
  ];

  static List<String> subname = [
    '    Taylor Swift',
    '    Taylor Swift',
    '    Bad Bunny',
    '    Fleetwood Mac',
    '    Taylor Swift',
  ];
  Item getbyId(int id)=>Item(id, name[id%name.length], subname[id%subname.length]);
  Item  getByPostion(int postion ){
    return getbyId(postion);
  }
}
class Item {
  final int id;
  final String name, subname;
  const Item (
      this.id, this.name, this.subname
      );
  @override
  int get hashcode => id;
  @override
  bool operator == (Object other) => other is Item && other.id == id;
}