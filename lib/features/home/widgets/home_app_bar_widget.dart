import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homi/core/route/routes.dart';
import 'package:homi/utils/spaces_util.dart';
import 'package:homi/widgets/summary_header.dart';

class HomeAppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  const HomeAppBarMobile({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20.0 : 32.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Good Morning, $userName',
                  style: TextStyle(fontSize: 18),
                )),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(profile),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: theme.primaryColor,
                    child: Icon(Icons.person),
                  ),
                )
              ],
            ),
            AppSpaces.vertical10,
            SummaryHeader(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      isMobile ? Size.fromHeight(window.physicalSize.height * .04) : Size.fromHeight(window.physicalSize.height * .1);

  bool get isMobile => Platform.isAndroid || Platform.isIOS;
}
