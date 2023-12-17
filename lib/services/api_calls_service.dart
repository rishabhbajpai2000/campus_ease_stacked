import 'dart:convert';
import 'package:campus_ease/app/app.logger.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:http/http.dart" as http;
import 'package:http/http.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ApiCallsService {
  final _logger = getLogger("ApiCallsService");
  final User user = Supabase.instance.client.auth.currentUser!;
  Future<int> upsertRegistrationDetails(
      {required String firstName,
      required String lastName,
      required String collegeEmail,
      required String universityRollNumber,
      required String collegeRegistrationNumber,
      required String sgpa,
      required String percentage,
      required String branch}) async {
    // making an api call to fill the data to the server.
    Map<String, dynamic> body = {
      "userId": user.id,
      "firstName": firstName,
      "lastName": lastName,
      "rollNumber": universityRollNumber,
      "collegeAdmissionNumber": collegeRegistrationNumber,
      "email": collegeEmail,
      "branch": branch,
      "SGPA": sgpa,
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
}
