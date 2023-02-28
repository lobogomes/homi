import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/utils/spaces_util.dart';
import 'package:homi/utils/utils.dart';

class TopSelectButton extends StatelessWidget {
  const TopSelectButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: [
        DropdownMenuItem<String>(
          child: Text('All Rooms'),
          value: 'All Rooms',
        ),
        DropdownMenuItem<String>(
          child: Text('Living Room'),
          value: 'Living Room',
        ),
      ],
      hint: Text(
        'Living Room',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      ),
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
      icon: Padding(padding: EdgeInsets.only(left: 5), child: Icon(CupertinoIcons.chevron_down)),
      iconSize: 20,
      iconEnabledColor: Colors.black,
      underline: SizedBox.shrink(),
      onChanged: (value) {},
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    bool on = true;

    return InkWell(
      onTap: () => {on = on == true ? false : true},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: on == false ? Colors.grey : null,
            gradient: on == true ? appGradient(theme) : null,
            boxShadow: on == true ? [BoxShadow(color: Colors.grey, blurRadius: 5.0, offset: Offset(0, 5))] : null),
        padding: EdgeInsets.all(9.0),
        child: Image.asset(
          AppAssets.onOff,
          width: 25,
          height: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: appGradient(theme),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0, offset: Offset(0, 5))]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ),
    );
  }
}
