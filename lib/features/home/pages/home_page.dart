import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homi/features/home/controllers/home/home_controller.dart';
import 'package:homi/features/home/pages/home_mobile/home_page_mobile.dart';
import 'package:homi/features/home/pages/home_web/home_page_web.dart';

import 'package:homi/features/repository_registry.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = RepositoryRegistry.instance.resolve<HomeController>();
  final String userName;
  HomePage({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      return HomePageMobile(userName: userName);
    } else {
      return HomePageWeb(userName: userName);
    }
  }
}
