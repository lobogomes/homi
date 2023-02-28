import 'dart:io';

import 'package:flutter/material.dart';

import 'package:homi/utils/spaces_util.dart';

class HomeSectionButton extends StatefulWidget {
  const HomeSectionButton({
    Key? key,
    required this.image,
    required this.text,
    required this.onTap,
    this.fontSize = 18,
    this.unSelectedImageColor,
    this.onLongPress,
    this.onDispose,
    this.isDisposable = false,
    required this.height,
    required this.width,
  }) : super(key: key);
  final String image;
  final String text;
  final double height;
  final double width;
  final VoidCallback onTap;
  final Color? unSelectedImageColor;
  final double fontSize;
  final Function()? onLongPress;
  final Function()? onDispose;
  final bool isDisposable;

  @override
  State<HomeSectionButton> createState() => _HomeSectionButtonState();
}

class _HomeSectionButtonState extends State<HomeSectionButton> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(15),
          elevation: widget.isDisposable ? 10 : 0,
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: widget.onTap,
            onLongPress: () {
              if (!(Platform.isAndroid || Platform.isIOS)) {
                widget.onLongPress?.call();
              }
            },
            child: Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  AppSpaces.vertical15,
                  Expanded(
                    child: Center(
                      child: Container(
                        width: size.width / 5,
                        height: size.height / 10,
                        child: Image.asset(
                          widget.image,
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  AppSpaces.vertical15,
                  Text(
                    widget.text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: widget.fontSize,
                    ),
                  ),
                  AppSpaces.vertical15,
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: widget.isDisposable,
          child: Positioned(
              right: -5,
              top: -5,
              child: GestureDetector(
                onTap: widget.onDispose,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.close,
                    size: 15,
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
