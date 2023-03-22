import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/presentation/pages/home_page.dart';
import 'package:untitled5/presentation/widgets/colored_button.dart';

import 'login_page.dart';
import 'package:untitled5/globals.dart' as globals;

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});


  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2023),
    );
    if (picked != null && picked != selectedDate) selectedDate = picked;
  }

  @override
  Widget build(BuildContext context) {

    
    String firstName='';
    String secondName='';

    String email='';

    String password='';

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        height: height,
        color: const Color.fromRGBO(227, 227, 253, 1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 60 / 926),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Registration",
                  style: GoogleFonts.merriweather(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 75),
                child: InputText(
                  onValueInput: (newFirstName) {
                    firstName = newFirstName;
                  },
                  fillColor: Colors.white,
                  hintText: "First name",
                  labelText: "First name",
                  obscureText: false,
                )),
            Padding(
                padding: const EdgeInsets.only(top: 11),
                child: InputText(
                  onValueInput: (newSecondName) {
                    secondName = newSecondName;
                  },
                  fillColor: Colors.white,
                  hintText: "Second name",
                  obscureText: false,
                  labelText: "Second name",
                )),
            Padding(
                padding: const EdgeInsets.only(top: 11),
                child: InputText(
                  onValueInput: (newEmail) {
                    email = newEmail;
                  },
                  fillColor: Colors.white,
                  hintText: "Email",
                  labelText: "Email",
                  obscureText: false,
                )),
            Padding(
                padding: const EdgeInsets.only(top: 11),
                child: InputText(
                  onValueInput: (newPassword) {
                    password = newPassword;
                  },
                  fillColor: Colors.white,
                  labelText: "Password",
                  hintText: "Password",
                  obscureText: true,
                )),
            GestureDetector(
              onTap: () => _selectDate(context), // Refer step 3
              child: ColoredButton(
                height: height / 20,
                width: width * 0.85,
                // ignore: sort_child_properties_last
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Select your birthdate',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                dropShadow: true,
                colors: const [
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: GestureDetector(
                child: ColoredButton(
                  dropShadow: false,
                  colors: globals.colors[3],
                  height: height / 20,
                  width: width * 0.85,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "End registration",
                      style: GoogleFonts.antic(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  if (email != '' && password != '') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Material(
                                  child: HomePage(
                                    userInfo: UserEntity(
                                        firstName: firstName,
                                        secondName: secondName,
                                        password: password,
                                        email: email,
                                        birthDate: selectedDate,
                                        isAdmin: false,
                                        createdDate: DateTime.now(),
                                        id: 0,
                                        briefcase: const [
                                          CurrencyEntity(
                                              id: 0,
                                              amount: 150.0,
                                              briefcaseId: 0,
                                              currency: "RUB"),
                                        ]),
                                  ),
                                )));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
