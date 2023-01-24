import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homi/routes/navigator.dart';
import 'package:homi/utils/animation/FadeAnimation.dart';
import 'package:homi/widgets/buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(
                        1,
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/light-1.png'))),
                        ))),
                Positioned(
                  left: 140,
                  width: 80,
                  height: 150,
                  child: FadeAnimation(
                      1.3,
                      Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-2.png'))),
                      )),
                ),
                Positioned(
                  right: 40,
                  top: 40,
                  width: 80,
                  height: 150,
                  child: FadeAnimation(
                      1.5,
                      Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/clock.png'))),
                      )),
                ),
                Positioned(
                    child: FadeAnimation(
                        1.6,
                        Container(
                          margin: const EdgeInsets.only(top: 220),
                          height: 70,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo.png'),
                                  scale: 0.5,
                                  fit: BoxFit.fitHeight)),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: <Widget>[
              FadeAnimation(
                1.8,
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: Column(children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "e-mail",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    )
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
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(143, 148, 251, 1),
                            Color.fromRGBO(143, 148, 251, .6)
                          ])),
                      child: AppButton(
                        text: 'Login',
                        onPressed: () =>
                            AppNavigator.pushNamedAndClear(dashboardRoute),
                      ))),
              const SizedBox(height: 70),
              FadeAnimation(
                  1.5,
                  GestureDetector(
                    onTap: () => AppNavigator.pushNamed(registerRoute),
                    child: Text(
                      'Don\'t have an account? Register.',
                      style: TextStyle(color: Get.theme.primaryColor),
                    ),
                  ))
            ]),
          ),
        ],
      )),
    );
  }
}
