import 'package:flutter/material.dart';
import 'package:homi/utils/animation/FadeAnimation.dart';
import 'package:homi/widgets/buttons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          FadeAnimation(
              1,
              Container(
                margin: const EdgeInsets.only(top: 150, bottom: 40),
                height: 70,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo-2.png'), scale: 0.5, fit: BoxFit.fitHeight)),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
            child: Column(children: <Widget>[
              FadeAnimation(
                1.8,
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(143, 148, 251, .2), blurRadius: 20.0, offset: Offset(0, 10))
                      ]),
                  child: Column(children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "name", hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "e-mail", hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "password", hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "confirm password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 30),
              FadeAnimation(
                  2,
                  Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              colors: [Color.fromRGBO(143, 148, 251, 1), Color.fromRGBO(143, 148, 251, .6)])),
                      child: AppButton(
                        text: 'Register',
                        onPressed: () {}, //=>
                        //AppNavigator.pushNamedAndClear(dashboardRoute),
                      ))),
              const SizedBox(height: 70),
              FadeAnimation(
                  1.5,
                  GestureDetector(
                    onTap: () {}, // => AppNavigator.pushNamed(loginRoute),
                    child: Text(
                      'Have an account? Login now.',
                      style: TextStyle(color: theme.primaryColor),
                    ),
                  ))
            ]),
          ),
        ],
      )),
    );
  }
}
