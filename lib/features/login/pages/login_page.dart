import 'package:flutter/material.dart';
import 'package:homi/core/route/routes.dart';
import 'package:homi/features/login/controllers/login/login_controller.dart';
import 'package:homi/features/login/widgets/login_app_bar.dart';
import 'package:homi/features/repository_registry.dart';
import 'package:homi/utils/animation/FadeAnimation.dart';
import 'package:homi/widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController loginController = RepositoryRegistry.instance.resolve<LoginController>();

  @override
  void initState() {
    loginController.addListener(() {
      var state = loginController.value;
      if (state is LoginAuthenticatedState) {
        Navigator.of(context).pushReplacementNamed(
          home,
          arguments: {'userName': state.user.nome},
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    loginController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: LoginAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
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
                            offset: Offset(
                              0,
                              10,
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: TextField(
                              onChanged: loginController.usernameInputChanged,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "e-mail",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: loginController.passwordInputChanged,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ValueListenableBuilder<LoginState>(
                      valueListenable: loginController,
                      builder: (context, state, _) {
                        if (state is LoginLoadingState)
                          return SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(),
                          );
                        return FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    colors: [Color.fromRGBO(143, 148, 251, 1), Color.fromRGBO(143, 148, 251, .6)])),
                            child: AppButton(
                              text: 'Login',
                              onPressed: () async => await loginController.login(),
                            ),
                          ),
                        );
                      }),
                  const SizedBox(height: 70),
                  FadeAnimation(
                    1.5,
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(''),
                      child: Text(
                        'Don\'t have an account? Register.',
                        style: TextStyle(color: theme.primaryColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
