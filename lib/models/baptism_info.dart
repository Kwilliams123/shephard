class BaptismInfo {
  int id;
  String date;
  String officiatingMinister;
  bool hasHolyGhostBaptism;

  BaptismInfo(
      this.id, this.date, this.officiatingMinister, this.hasHolyGhostBaptism);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    data['id'] = id;
    data['date'] = date;
    data['officiating_minister'] = officiatingMinister;
    data['has_holy_ghost_baptism'] = hasHolyGhostBaptism;
    return data;
  }

  BaptismInfo.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    date = data['date'];
    officiatingMinister = data['officiating_minister'];
    hasHolyGhostBaptism = data['has_holy_ghost_baptism'];
  }
}
