import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'initial_welcom_screen_viewmodel.dart';

class InitialWelcomScreenView
    extends StackedView<InitialWelcomScreenViewModel> {
  const InitialWelcomScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InitialWelcomScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome to \nCampus Ease",
                  style: TextStyle(fontSize: 30),
                ),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToSignUpView();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF92DCEC)),
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        "CREATE AN ACCOUNT",
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToSignInView();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF92DCEC)),
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 15),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  InitialWelcomScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InitialWelcomScreenViewModel();
}
