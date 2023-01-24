import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homi/controllers/bottom_navigation_controller.dart';
import 'package:homi/screens/home_screen.dart';
import 'package:homi/screens/lights_screen.dart';
import 'package:homi/screens/profile_screen.dart';
import 'package:homi/screens/temperature_screen.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationController>(
        init: BottomNavigationController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              body: IndexedStack(
                index: 0,
                children: [
                  [
                    HomeScreen(),
                    TempatureScreen(),
                    LightsScreen(),
                    ProfileScreen(),
                  ][controller.index]
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: controller.index,
                onTap: controller.setIndex,
                selectedLabelStyle: TextStyle(fontSize: 1),
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.arrow_square_up),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.lamp_on),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.user),
                    label: '',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
