// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:shephard/models/baptism_info.dart';

void main() {
  final baptism = BaptismInfo(1, '20/06/2020', 'Pastor Stephen Bonzoe', true);
  final baptismJson = {
    'id': 1,
    'date': '20/06/2020',
    'officiating_minister': 'Pastor Stephen Bonzoe',
    'has_holy_ghost_baptism': true
  };

  test('BaptismInfo test', () {
    expect(baptismJson, baptism.toJson());
    expect(BaptismInfo.fromJson(baptismJson).id, baptism.id);
    expect(BaptismInfo.fromJson(baptismJson).date, baptism.date);

    expect(BaptismInfo.fromJson(baptismJson).officiatingMinister,
        baptism.officiatingMinister);
    expect(BaptismInfo.fromJson(baptismJson).hasHolyGhostBaptism,
        baptism.hasHolyGhostBaptism);
  });
}
