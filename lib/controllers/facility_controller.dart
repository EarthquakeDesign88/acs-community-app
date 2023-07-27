import 'package:get/get.dart';
import 'package:acs_community/models/facility_model.dart';
import 'package:acs_community/services/api_service.dart';

class FacilityController extends GetxController {
  final ApiService _apiService = ApiService();
  final RxList<Facility> facilityLists = <Facility>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchFacilities();
  }

  Future<void> fetchFacilities() async {
    try {
      final List<Facility> facilities = await _apiService.getFacilities();
      facilityLists.assignAll(facilities);
    } catch (e) {
      print('Error fetching announcements: $e');
    }
  }

  Facility? bookingById(int facilityId) {
    return facilityLists.firstWhere((facility) => facility.id == facilityId);
  }
}
