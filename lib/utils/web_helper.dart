import 'package:http/http.dart' as http;
import 'dart:convert';

class WebHelper {
  static final String baseURL = "https://covid-193.p.rapidapi.com/";

  static Future<List<dynamic>> getCountriesList() async {
    Map<String, String> headers = {
      "x-rapidapi-host": "covid-193.p.rapidapi.com",
      "x-rapidapi-key": "eb2d342308msh581037134219cfep1a2233jsne64aa5ab0a03"
    };
    var response = await http.get('$baseURL/countries', headers: headers);
    Map<String, dynamic> decoded = json.decode(response.body);
    return decoded["response"];
  }

  static Future<Map<String, dynamic>> getCountryStatistics(
      String country) async {
    Map<String, String> headers = {
      "x-rapidapi-host": "covid-193.p.rapidapi.com",
      "x-rapidapi-key": "eb2d342308msh581037134219cfep1a2233jsne64aa5ab0a03"
    };
    var response = await http.get('$baseURL/statistics?country=$country',
        headers: headers);

    Map<String, dynamic> decoded = json.decode(response.body);
    return decoded;
  }
}
