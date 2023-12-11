import 'package:campus_ease/ui/views/signin/signin_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'signin_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'email', validator: SignUpValidators.emailValidator),
    FormTextField(
        name: 'password', validator: SignUpValidators.passwordValidator),
  ],
)
class SigninView extends StackedView<SigninViewModel> with $SigninView {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login to your Account",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Text("Email", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: SignUpValidators.emailValidator,
                    controller: emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFF92DCEC),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Password", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: SignUpValidators.passwordValidator,
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFF92DCEC),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      viewModel.logIn();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFF92DCEC)),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                            child: Text(
                          "Login",
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
      ),
    );
  }

  @override
  SigninViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninViewModel();

  @override
  void onViewModelReady(
    SigninViewModel viewModel,
  ) async {
    syncFormWithViewModel(viewModel);
  }
}
