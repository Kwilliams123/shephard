class EducationalBackground {
  String type;
  String institution;
  String occupation;

  EducationalBackground(this.type, this.institution, this.occupation);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    data['type'] = type;
    data['institution'] = institution;
    data['occupation'] = occupation;

    return data;
  }

  EducationalBackground.fromJson(Map<String, dynamic> data) {
    type = data['type'];
    institution = data['institution'];
    occupation = data['occupation'];
  }
}
