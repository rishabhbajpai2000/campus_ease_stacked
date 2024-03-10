import 'package:campus_ease/services/Job.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'all_jobs_viewmodel.dart';

class AllJobsView extends StackedView<AllJobsViewModel> {
  const AllJobsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllJobsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Applications Pending',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: viewModel.jobData == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: viewModel.jobData!.unfilled.length,
                      itemBuilder: (context, index) {
                        Job job = viewModel.jobData!.unfilled[index];
                        return jobCard(job);
                      },
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Applications Successful',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: viewModel.jobData == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: viewModel.jobData!.filled.length,
                      itemBuilder: (context, index) {
                        Job job = viewModel.jobData!.filled[index];
                        return jobCard(job);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Padding jobCard(Job job) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        height: 60,
        child: Row(children: [
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.timelapse_sharp,
            size: 40,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(job.companyName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(
                job.jobProfile,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green[50],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Apply",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ]),
      ),
    );
  }

  @override
  AllJobsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllJobsViewModel();

  @override
  void onViewModelReady(AllJobsViewModel viewModel) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      viewModel.getJobs();
    });
  }
}
