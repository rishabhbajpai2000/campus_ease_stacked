import 'package:campus_ease/ui/views/registration_details/registration_details_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'registration_details_viewmodel.dart';

@FormView(fields: [
  FormTextField(
      name: 'firstName',
      validator: RegistrationDetailsValidators.validateFirstName),
  FormTextField(
      name: 'lastName',
      validator: RegistrationDetailsValidators.validateLastName),
  FormTextField(
      name: 'collegeEmail',
      validator: RegistrationDetailsValidators.validateEmail),
  FormTextField(
      name: 'universityRollNumber',
      validator: RegistrationDetailsValidators.validateRollNumber),
  FormTextField(
      name: 'collegeRegistrationNumber',
      validator: RegistrationDetailsValidators.validateRegistrationNumber),
  FormTextField(
      name: 'sgpa', validator: RegistrationDetailsValidators.validateSGPA),
  FormTextField(
      name: 'percentage',
      validator: RegistrationDetailsValidators.validatePercentage),
])
class RegistrationDetailsView extends StackedView<RegistrationDetailsViewModel>
    with $RegistrationDetailsView {
  const RegistrationDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegistrationDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Details"),
        actions: [
          TextButton(
              onPressed: () {
                viewModel.skipRegistration();
              },
              child: Text("Skip for Now"))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("First Name"),
                TextFormField(
                  controller: firstNameController,
                  validator: RegistrationDetailsValidators.validateFirstName,
                  decoration: InputDecoration(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Last Name"),
                TextFormField(
                  controller: lastNameController,
                  validator: RegistrationDetailsValidators.validateLastName,
                  decoration: InputDecoration(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("College Email"),
                TextFormField(
                  controller: collegeEmailController,
                  validator: RegistrationDetailsValidators.validateEmail,
                  decoration: InputDecoration(),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("University Roll Number"),
                TextFormField(
                  controller: universityRollNumberController,
                  validator: RegistrationDetailsValidators.validateRollNumber,
                  decoration: InputDecoration(),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("College Registration Number"),
                TextFormField(
                  controller: collegeRegistrationNumberController,
                  validator:
                      RegistrationDetailsValidators.validateRegistrationNumber,
                  decoration: InputDecoration(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("SGPA(Latest)"),
                TextFormField(
                  controller: sgpaController,
                  validator: RegistrationDetailsValidators.validateSGPA,
                  decoration: InputDecoration(),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Percentage(Latest)"),
                TextFormField(
                  controller: percentageController,
                  validator: RegistrationDetailsValidators.validatePercentage,
                  decoration: InputDecoration(),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Branch"),
                DropdownButton<String>(
                  value: viewModel.selectedBranch,
                  onChanged: (String? newValue) {
                    viewModel.updateBranch(newValue);
                  },
                  items: <String>[
                    "Computer Science",
                    "Civil Engineering",
                    "Information Technology",
                    "Electrical Engineering",
                    "Electronics and Communication",
                    "Mechanical Engineering",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async{
                       await viewModel.submit();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFF8e97fd),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text("Submit"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  RegistrationDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegistrationDetailsViewModel();

  @override
  void onViewModelReady(RegistrationDetailsViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}
