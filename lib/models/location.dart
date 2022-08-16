class Location {
  String name;
  String code;
  String description;

  Location(this.name, this.code, this.description);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    data['name'] = name;
    data['code'] = code;
    data['description'] = description;

    return data;
  }

  Location.fromJson(Map<String, dynamic> data) {
    name = data['name'];
    code = data['code'];
    description = data['description'];
  }
}
