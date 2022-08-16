import 'package:shephard/models/baptism_info.dart';
import 'package:shephard/models/children.dart';
import 'package:shephard/models/educational_background.dart';
import 'package:shephard/models/location.dart';

class User {
  int id;
  String name;
  List<Children> children;
  EducationalBackground educationalBackground;
  Location location;
  BaptismInfo baptismInfo;

  User(this.id, this.name, this.children, this.educationalBackground,
      this.location, this.baptismInfo);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['children'] = children;
    data['educational_background'] = educationalBackground;
    data['location'] = location;
    data['baptism_info'] = baptismInfo;

    return data;
  }
}
