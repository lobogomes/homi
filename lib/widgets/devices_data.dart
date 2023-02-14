import 'package:flutter/material.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/utils/spaces_util.dart';

class DevicesData extends StatelessWidget {
  const DevicesData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: size.width / 16,
                    height: size.height / 16,
                    child: Image.asset(
                      AppAssets.temperature,
                      color: theme.primaryColor,
                    ),
                  ),
                  AppSpaces.horizontal10,
                  Text(
                    '25°C',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: size.width / 16,
                    height: size.height / 16,
                    child: Image.asset(
                      AppAssets.light,
                      color: theme.primaryColor,
                    ),
                  ),
                  AppSpaces.horizontal10,
                  Text(
                    'ON',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: size.width / 13,
                    height: size.height / 13,
                    child: Image.asset(
                      AppAssets.humidity,
                      color: theme.primaryColor,
                    ),
                  ),
                  AppSpaces.horizontal10,
                  Text(
                    '89%',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
