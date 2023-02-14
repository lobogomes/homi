import 'package:flutter/material.dart';
import 'package:homi/features/home/controllers/home/home_controller.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/utils/spaces_util.dart';
import 'package:homi/widgets/buttons.dart';
import 'package:homi/widgets/summary_header.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = HomeController();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ValueListenableBuilder<HomeState>(
            valueListenable: homeController,
            builder: (context, state, _) {
              if (state is HomeInitialState) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Good Morning, Amanda',
                          style: TextStyle(fontSize: 18),
                        )),
                        // GestureDetector(
                        //   onTap: () => bottomNavigationController.setIndex(3),
                        //   child: CircleAvatar(
                        //     radius: 20,
                        //     backgroundImage: AssetImage(AppAssets.user),
                        //   ),
                        // )
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
                          isSelected: state.index == 0,
                          onTap: () {
                            homeController.setIndex(0);
                            Navigator.of(context).pushNamed('/home/functions');
                          },
                        ),
                        AppSpaces.horizontal20,
                        HomeButton(
                          image: AppAssets.bedroom,
                          text: 'Bedroom',
                          isSelected: state.index == 1,
                          onTap: () {
                            homeController.setIndex(1);
                            Navigator.of(context).pushNamed('/home/functions');
                          },
                        ),
                      ]),
                    ),
                    AppSpaces.vertical20,
                    Expanded(
                      child: Row(children: [
                        HomeButton(
                          image: AppAssets.kitchen,
                          text: 'Kitchen',
                          isSelected: state.index == 2,
                          onTap: () {
                            homeController.setIndex(2);
                            Navigator.of(context).pushNamed('/home/functions');
                          },
                        ),
                        AppSpaces.horizontal20,
                        HomeButton(
                          image: AppAssets.bathroom,
                          text: 'Bathroom',
                          isSelected: state.index == 3,
                          onTap: () {
                            homeController.setIndex(3);
                            Navigator.of(context).pushNamed('/home/functions');
                          },
                        ),
                      ]),
                    ),
                    AppSpaces.vertical20,
                    Expanded(
                      child: Row(children: [
                        HomeButton(
                          image: AppAssets.studio,
                          text: 'Office',
                          isSelected: state.index == 4,
                          onTap: () {
                            homeController.setIndex(4);
                            Navigator.of(context).pushNamed('/home/functions');
                          },
                        ),
                        AppSpaces.horizontal20,
                        HomeButton(
                          image: AppAssets.washingroom,
                          text: 'Washing Room',
                          isSelected: state.index == 5,
                          onTap: () {
                            homeController.setIndex(5);
                            Navigator.of(context).pushNamed('/home/functions');
                          },
                        ),
                      ]),
                    ),
                  ],
                );
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
