import 'package:campus_ease/ui/views/sign_up/sign_up_view.form.dart';
import 'package:campus_ease/ui/views/signin/signin_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'sign_up_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'email', validator: SignUpValidators.emailValidator),
    FormTextField(
        name: 'password', validator: SignUpValidators.passwordValidator),
    FormTextField(name: 'confirmPassword')
  ],
)
class SignUpView extends StackedView<SignUpViewModel> with $SignUpView {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    "Create a new Account",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Text("Email", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: SignUpValidators.emailValidator,
                    keyboardType: TextInputType.emailAddress,
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
                  // SizedBox(height: 20),
                  // Text("Confirm Password", style: TextStyle(fontSize: 20)),
                  // SizedBox(height: 10),
                  // TextFormField(
                  //   obscureText: true,
                  //   controller: confirmPasswordController,
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: Color(0XFF92DCEC),
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide.none,
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  // ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      viewModel.signUp();
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
                          "SignUp",
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
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();

  @override
  void onViewModelReady(
    SignUpViewModel viewModel,
  ) async {
    syncFormWithViewModel(viewModel);
  }
}
