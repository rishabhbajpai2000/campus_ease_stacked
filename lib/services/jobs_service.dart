import 'dart:convert';

import 'package:campus_ease/services/JobData.dart';
import 'package:campus_ease/services/api_calls_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class JobsService {
  final ApiCallsService _apiCallsService = ApiCallsService();
  final User user = Supabase.instance.client.auth.currentUser!;

  // this function should return a list of jobs object.
  Future<JobData> getJobs() async {
    // here we will get the jobs from the server.
    // making api call to get the jobs from the server.
    String userId = user.id.toString();
    String responseBody = await _apiCallsService.getJobs(userId: userId);
    if (responseBody == "Error") {
      // if there is an error then we will show a toast message.
      Fluttertoast.showToast(msg: "Error in getting jobs");
      return JobData(filled: [], unfilled: []);
    } else {
      JobData jobData = JobData.fromJson(jsonDecode(responseBody));
      jobData.printData();
      return jobData;
    }
  }
}
