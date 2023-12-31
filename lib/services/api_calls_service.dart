import 'dart:convert';
import 'package:campus_ease/app/app.logger.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:http/http.dart" as http;
import 'package:http/http.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ApiCallsService {
  final _logger = getLogger("ApiCallsService");

  Future<int> upsertRegistrationDetails(
      {required String firstName,
      required String lastName,
      required String collegeEmail,
      required String universityRollNumber,
      required String collegeRegistrationNumber,
      required String sgpa,
      required String percentage,
      required String branch,
      required String userId}) async {
    // making an api call to fill the data to the server.
    Map<String, dynamic> body = {
      "userId": userId,
      "firstName": firstName,
      "lastName": lastName,
      "rollNumber": universityRollNumber,
      "collegeAdmissionNumber": collegeRegistrationNumber,
      "email": collegeEmail,
      "branch": branch,
      "sgpa": sgpa,
      "percentage": percentage,
      // "tokenID": Null // TODO: Implment oneSignal token ID
    };

    String data = jsonEncode(body);
    Map<String, String> headers = {"Content-type": "application/json"};
    // the request is sent to the backend
    final Response response = await http.put(
        Uri.parse("https://campus-ease.onrender.com/student"),
        headers: headers,
        body: data);

    if (response.statusCode == 200) {
      _logger.i("Registration details successfully sent to the server");
    } else {
      _logger.e("Error sending registration details to the server");
      _logger.e(response.body);
    }

    return response.statusCode;
  }

  Future<bool> isRegistered({required String userId}) async {
    final Response response = await http.get(
      Uri.parse("https://campus-ease.onrender.com/student/$userId"),
    );

    if (response.statusCode == 200) {
      if (response.body == "User exists") {
        _logger.i("User exists");
        return true;
      } else {
        _logger.i("User does not exist");
        return false;
      }
    } else {
      _logger.e("Error checking registration details from the server");
      _logger.e(response.body);
    }
    return false;
  }

  Future<String> getJobs({required String userId}) async{
    final Response response = await http.get(
      Uri.parse("https://campus-ease.onrender.com/jobs/$userId"),
    );

    if (response.statusCode == 200) {
      _logger.i("Jobs successfully fetched from the server");
      _logger.i(response.body);
      return response.body;
    } else {
      _logger.e("Error fetching jobs from the server");
      _logger.e(response.body);
      return "Error";
    }
  }
}
