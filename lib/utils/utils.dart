import 'package:intl/intl.dart';

class Utils {
  static String formatDate(String date, {String formatOption}) {
    DateTime format = DateTime.parse(date);
    return DateFormat(formatOption ?? 'yyyy-M-d').format(format);
  }

  static int daysSince(String date) {
    var now = DateTime.now();

    var givenDate = DateTime.parse(date);
    return now.difference(givenDate).inDays.abs();
  }
}
