// import 'package:get/get.dart';
// import 'package:acs_community/models/covid_model.dart';
// import 'package:acs_community/services/api_service.dart';

// class CovidController extends GetxController {
//   final ApiService _apiService = ApiService();

//   final RxList<Covid> covidLists = <Covid>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchCovid();
//   }

//   Future<void> fetchCovid() async {
//     try {
//       final List<Covid> covids = await _apiService.getCovid();
//       covidLists.assignAll(covids);
//     } catch (e) {
//       print('Error fetching announcements: $e');
//     }
//   }



// }
