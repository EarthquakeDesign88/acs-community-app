class Announcement {
  final int id;
  final String imagePath;
  final String title;
  final String subtitle;
  final String type;
  final String date;
  final String totalThank;
  final String totalView;

  Announcement({
    required this.id,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.date,
    required this.totalThank,
    required this.totalView,
  });


  factory Announcement.fromJson(Map<String, dynamic> json) {
    return Announcement(
      id: json['id'],
      imagePath: json['imagePath'],
      title: json['title'],
      subtitle: json['subtitle'],
      type: json['type'],
      date: json['date'],
      totalThank: json['totalThank'], // Convert to int
      totalView: json['totalView'],   // Convert to int
    );
  }
}
