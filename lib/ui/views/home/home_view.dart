import 'package:campus_ease/ui/views/all_jobs/all_jobs_view.dart';
import 'package:campus_ease/ui/views/applied_jobs/applied_jobs_view.dart';
import 'package:campus_ease/ui/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);
  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const AllJobsView();
      case 1:
        return const AppliedJobsView();
      case 2:
        return const ProfileView();
    }
    return Container();
  }

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: getViewForIndex(viewModel.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 30,
                width: 25,
                child: Image.asset(
                  "assets/home.png",
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    "assets/appliedJobs.png",
                  ),
                ),
                label: "Applied Jobs"),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 30,
                  width: 25,
                  child: Image.asset(
                    "assets/notifications.png",
                  ),
                ),
                label: "Profile"),
          ],
          currentIndex: viewModel.currentIndex,
          selectedItemColor: const Color(0xFF174DA3),
          onTap: viewModel.setIndex,
        ));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
