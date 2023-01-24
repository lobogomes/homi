import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homi/controllers/home_screen_controller.dart';
import 'package:homi/routes/navigator.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/utils/spaces_util.dart';
import 'package:homi/widgets/buttons.dart';

import '../widgets/summary_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Good Morning, Amanda',
                    style: TextStyle(fontSize: 18),
                  )),
                  GestureDetector(
                    onTap: () => AppNavigator.pushNamed(registerRoute),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(AppAssets.user),
                    ),
                  )
                ],
              ),
              AppSpaces.vertical10,
              SummaryHeader(),
              AppSpaces.vertical10,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.livingroom,
                    text: 'Living Room',
                    isSelected: controller.index == 0,
                    onTap: () => controller.setIndex(0),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.bedroom,
                    text: 'Bedroom',
                    isSelected: controller.index == 1,
                    onTap: () => controller.setIndex(1),
                  ),
                ]),
              ),
              AppSpaces.vertical20,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.kitchen,
                    text: 'Kitchen',
                    isSelected: controller.index == 2,
                    onTap: () => controller.setIndex(2),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.bathroom,
                    text: 'Bathroom',
                    isSelected: controller.index == 3,
                    onTap: () => controller.setIndex(3),
                  ),
                ]),
              ),
              AppSpaces.vertical20,
              Expanded(
                child: Row(children: [
                  HomeButton(
                    image: AppAssets.studio,
                    text: 'Office',
                    isSelected: controller.index == 4,
                    onTap: () => controller.setIndex(4),
                  ),
                  AppSpaces.horizontal20,
                  HomeButton(
                    image: AppAssets.washingroom,
                    text: 'Washing Room',
                    isSelected: controller.index == 5,
                    onTap: () => controller.setIndex(5),
                  ),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
