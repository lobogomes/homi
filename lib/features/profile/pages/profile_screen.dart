import 'package:flutter/material.dart';
import 'package:homi/core/route/router.dart';
import 'package:homi/core/route/routes.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/utils/spaces_util.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(AppAssets.user),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Amanda',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              AppSpaces.vertical10,
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5.0),
                  width: 400,
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.setting_2,
                        size: 20,
                        color: Colors.black,
                      ),
                      const TextButton(
                        onPressed: null,
                        child: Text('my account', style: TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      SizedBox(
                        width: 199,
                      ),
                      Icon(
                        Iconsax.arrow_right_3,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5.0),
                  width: 400,
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.notification,
                        size: 20,
                        color: Colors.black,
                      ),
                      const TextButton(
                        onPressed: null,
                        child: Text('notifications', style: TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      SizedBox(
                        width: 194,
                      ),
                      Icon(
                        Iconsax.arrow_right_3,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5.0),
                  width: 400,
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.note,
                        size: 20,
                        color: Colors.black,
                      ),
                      const TextButton(
                        onPressed: null,
                        child: Text('devices', style: TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      SizedBox(
                        width: 231,
                      ),
                      Icon(
                        Iconsax.arrow_right_3,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5.0),
                  width: 400,
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.logout,
                        size: 20,
                        color: Colors.black,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(login);
                        },
                        child: Text('log out', style: TextStyle(color: Colors.black, fontSize: 16)),
                      ),
                      SizedBox(
                        width: 231,
                      ),
                      Icon(
                        Iconsax.arrow_right_3,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
