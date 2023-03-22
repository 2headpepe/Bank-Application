import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:untitled5/globals.dart' as globals;
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/presentation/pages/home_page.dart';
import 'package:untitled5/presentation/pages/registration_page.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/login_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/user_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/colored_button.dart';
import 'package:untitled5/globals.dart' as globals;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        height: height,
        color: const Color.fromRGBO(227, 227, 253, 1),
        child: Column(children: [
          _LoginPageInputs(email: email, password: password),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?   ",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 12, color: Colors.black45),
                  ),
                  Text(
                    "Sign up for free",
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              )),
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
                        "Login",
                        style: GoogleFonts.antic(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Material(
                                  child: LoginBlocBuilder(
                                      email: email,
                                      password: password,
                                      child: (token) {
                                        globals.spToken.setString(
                                            globals.CACHED_TOKEN, token.token);
                                        return UserBlocBuilder(
                                            token: token.token,
                                            child: ((user) =>
                                                HomePage(userInfo: user)));
                                      }),
                                )));
                  })),
        ]),
      ),
    );
  }
}

class _LoginPageInputs extends StatelessWidget {
  late String email = "";
  late String password = "";
  _LoginPageInputs({required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(top: height / 3),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Welcome back",
            style: GoogleFonts.robotoCondensed(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: height / 60),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Welcome back! Please enter your details.",
            style: GoogleFonts.robotoCondensed(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 75),
          child: InputText(
            onValueInput: (newLogin) {
              email = newLogin;
            },
            fillColor: Colors.white,
            labelText: "Login",
            hintText: "Enter your email",
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
            hintText: "Enter your password",
            obscureText: true,
          )),
    ]);
  }
}

class InputText extends StatefulWidget {
  late final ValueChanged<String> onValueInput;
  late bool obscureText;

  late final String hintText;
  late final String labelText;
  late final Color fillColor;

  InputText(
      {Key? key,
      required this.hintText,
      required this.fillColor,
      required this.labelText,
      required this.onValueInput,
      required this.obscureText})
      : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width * 0.85,
      height: height / 8,
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.labelText,
              style: GoogleFonts.robotoCondensed(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(),
                  fillColor: widget.fillColor,
                  filled: true,
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(color: Colors.black38)),
              controller: _controller,
              onChanged: (String value) {
                widget.onValueInput(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
