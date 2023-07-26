import 'package:get/get.dart';
import 'package:acs_community/models/announcement_model.dart';
import 'package:http/http.dart' as http;
import 'package:acs_community/utils/app_constants.dart';
import 'dart:convert';

class AnnouncementController extends GetxController {
  RxList<Announcement> announcements = RxList<Announcement>();
  RxBool isLoading = true.obs;
  RxString errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

   void fetchData() async {
    try {
      final response = await http.get(Uri.parse('${AppConstants.baseUrl}${AppConstants.fetchAnnouncement}'));

      if (response.statusCode == 200) {
        final List<dynamic> decodedData = jsonDecode(response.body);
        announcements.value = decodedData
            .map((json) => Announcement(
                  id: json['announcement_id'],
                  imagePath: json['imagePath'],
                  title: json['title'],
                  subtitle: json['subtitle'],
                  type: json['type'],
                  date: json['date'],
                  totalThank: json['totalThank'],
                  totalView: json['totalView'],
                ))
            .toList();
      } else {
        errorMessage.value = 'Failed to fetch data: ${response.statusCode}';
      }
    } catch (error) {
      errorMessage.value = 'Failed to fetch data: $error';
    } finally {
      isLoading.value = false;
    }
  }

  List<String> announcementTypes = ["important", "general"];
  List<String> announcementTypesTH = ["ประกาศสำคัญ", "ข่าวสารทั่วไป"];

  int getAnnouncementCount(String type) {
    return announcements
        .where((announcement) => announcement.type == type)
        .length;
  }

  List<Announcement> getAnnouncementByType(String type) {
    return announcements
        .where((announcement) => announcement.type == type)
        .toList();
  }

  Announcement? getAnnouncementById(int detailId) {
    return announcements
        .firstWhere((announcement) => announcement.id == detailId);
  }
}
