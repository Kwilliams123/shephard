class BaptismInfo {
  int id;
  String date;
  String officiatingMinister;
  String place;
  bool hasHolyGhostBaptism;

  BaptismInfo(this.id, this.date, this.place, this.officiatingMinister,
      this.hasHolyGhostBaptism);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    data['id'] = id;
    data['date'] = date;
    data['place'] = place;
    data['officiating_minister'] = officiatingMinister;
    data['has_holy_ghost_baptism'] = hasHolyGhostBaptism;
    return data;
  }

  BaptismInfo.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    date = data['date'];
    place = data['place'];
    officiatingMinister = data['officiating_minister'];
    hasHolyGhostBaptism = data['has_holy_ghost_baptism'];
  }
}
