class Children {
  String name;
  String phoneNumber;

  Children(this.name, this.phoneNumber);

  Map<String, dynamic> toJson() {
    return {'name': name, 'phone_number': phoneNumber};
  }

  Children.fromJson(Map<String, dynamic> data) {
    name = data['name'];
    phoneNumber = data['phone_number'];
  }
}
