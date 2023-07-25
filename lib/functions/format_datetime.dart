import 'package:intl/intl.dart';

String formatDateTime(DateTime? dateTime) {
  if (dateTime == null) {
    return 'ไม่พบข้อมูล'; // Return a default message for null values
  }

  final thaiMonths = [
    '',
    'ม.ค.',
    'ก.พ.',
    'มี.ค.',
    'เม.ย.',
    'พ.ค.',
    'มิ.ย.',
    'ก.ค.',
    'ส.ค.',
    'ก.ย.',
    'ต.ค.',
    'พ.ย.',
    'ธ.ค.'
  ];

  final thaiYear = (dateTime.year + 543).toString().substring(2);
  final thaiMonth = thaiMonths[dateTime.month];
  final thaiDay = dateTime.day.toString().padLeft(2, '0');
  final thaiTimeFormat = DateFormat.Hm('th');
  final thaiTime = thaiTimeFormat.format(dateTime);

  return '$thaiDay $thaiMonth $thaiYear / $thaiTime';
}