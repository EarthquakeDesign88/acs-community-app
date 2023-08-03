import 'package:get/get.dart';
import 'package:acs_community/models/property_management_model.dart';
import 'package:acs_community/services/api_service.dart';

class PropertyManagementController extends GetxController {
  final ApiService _apiService = ApiService();

  final RxList<PropertyManagement> propertyManagementLists =
      <PropertyManagement>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchJuristicInfo();
  }

  Future<void> fetchJuristicInfo() async {
    try {
      final List<PropertyManagement> juristicInfo = await _apiService.getPropertyManagement();
      propertyManagementLists.assignAll(juristicInfo);
    } catch (e) {
      print('Error fetching announcements: $e');
    }
  }

}
