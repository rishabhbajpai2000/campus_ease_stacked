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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pending Applications',
            style: Theme.of(context).textTheme.headline4,
          ),
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
                      return ListTile(
                        title: Text(job.companyName),
                        subtitle: Text(job.jobDescription),
                      );
                    },
                  ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Submitted Job Applications',
            style: Theme.of(context).textTheme.headline4,
          ),
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
                      return ListTile(
                        title: Text(job.companyName),
                        subtitle: Text(job.jobDescription),
                      );
                    },
                  ),
          ),
        ],
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
