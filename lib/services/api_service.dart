import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:acs_community/utils/app_constants.dart';
import 'package:acs_community/models/announcement_model.dart';
import 'package:acs_community/models/phone_book_model.dart';
import 'package:acs_community/models/property_management_model.dart';
import 'package:acs_community/models/facility_model.dart';
import 'package:acs_community/models/faq_model.dart';
// import 'package:acs_community/models/covid_model.dart';

class ApiService {
  Future<List<Announcement>> getAnnouncements() async {
    final response = await http.get(
        Uri.parse('${AppConstants.baseUrl}${AppConstants.fetchAnnouncement}'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((data) => Announcement.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<PhoneBook>> getPhoneBooks() async {

    final response = await http.get(Uri.parse('${AppConstants.baseUrl}${AppConstants.fetchPhonebook}'));
    // final response = await http.get(
    //   Uri.parse('https://53403137-16-20230221162108.webstarterz.com/developer/api/info-contact-list'),
    //   headers: {
    //     'user_id': 'User test',
    //     'token': 'D4a@56#d1af2fafa4f1afaf8aA',
    //   },
    // );

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((data) => PhoneBook.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Facility>> getFacilities() async {
    final response = await http
        .get(Uri.parse('${AppConstants.baseUrl}${AppConstants.fetchFacility}'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((data) => Facility.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<PropertyManagement>> getPropertyManagement() async {
    final response = await http
        .get(Uri.parse('${AppConstants.baseUrl}${AppConstants.fetchJuristicInfo}'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((data) => PropertyManagement.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Faq>> getFaq() async {
    final response = await http
        .get(Uri.parse('${AppConstants.baseUrl}${AppConstants.fetchFaq}'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((data) => Faq.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Future<List<Covid>> getCovid() async {
  //   final response = await http.get(
  //       Uri.parse('https://covid19.ddc.moph.go.th/api/Cases/today-cases-all'));

  //   if (response.statusCode == 200) {
  //     final List<dynamic> jsonData = jsonDecode(response.body);
  //     return jsonData.map((data) => Covid.fromJson(data)).toList();
  //   } else {
  //     throw Exception('Failed to load data');
  //   }
  // }
}
