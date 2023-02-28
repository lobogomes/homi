import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homi/utils/animation/FadeAnimation.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: isMobile ? BoxFit.fill : BoxFit.cover,
        ),
      ),
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
                    image: AssetImage('assets/images/light-1.png'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 140,
            width: 80,
            height: 150,
            child: FadeAnimation(
              1.3,
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/light-2.png'),
                  ),
                ),
              ),
            ),
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
                    image: AssetImage('assets/images/clock.png'),
                  ),
                ),
              ),
            ),
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
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool get isMobile => Platform.isAndroid || Platform.isIOS;

  @override
  Size get preferredSize => Size.fromHeight(400);
}
