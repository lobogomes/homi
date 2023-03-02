import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:homi/features/repository_registry.dart';
import 'package:homi/features/home_functions/led/controllers/led/led_controller.dart';
import 'package:homi/utils/assets_util.dart';
import 'package:homi/utils/spaces_util.dart';

class LedPage extends StatefulWidget {
  final String region;
  final String accessToken;

  LedPage({
    Key? key,
    required this.region,
    required this.accessToken,
  }) : super(key: key);

  @override
  State<LedPage> createState() => _LedPageState();
}

class _LedPageState extends State<LedPage> {
  final LedController ledController =
      RepositoryRegistry.instance.resolve<LedController>();

  @override
  void initState() {
    ledController.blinkLed(
      region: widget.region,
      accessToken: widget.accessToken,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ValueListenableBuilder<LedState>(
        valueListenable: ledController,
        builder: (context, state, _) {
          return Column(
            children: [
              AppSpaces.vertical30,
              AppSpaces.vertical30,
              AppSpaces.vertical30,
              Text(
                'Intensity',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
              AppSpaces.vertical10,
              Image.asset(
                AppAssets.sun,
                height: 40,
              ),
              AppSpaces.vertical10,
              Expanded(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: theme.primaryColor,
                      inactiveTrackColor: theme.disabledColor,
                      thumbColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      thumbSelector: (textDirection, values, tapValue,
                              thumbSize, trackSize, dx) =>
                          Thumb.start,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 1,
                        elevation: 0.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 1),
                      trackHeight: size.width / 3,
                      trackShape: CustomRoundedRectSliderTrackShape(
                          Radius.circular(12)),
                    ),
                    child: Slider(
                      onChanged:
                          (value) {}, //=> controller.sliderData.value = value,
                      min: 0,
                      max: 100,
                      value: 0, //controller.sliderData.value,
                    ),
                  ),
                ),
              ),
              AppSpaces.vertical20,
              FlutterSwitch(
                value: state is LedOnState,
                onToggle: (value) async => await ledController.blinkLed(
                    region: widget.region, accessToken: widget.accessToken),
                inactiveColor: theme.disabledColor,
                activeColor: theme.disabledColor,
                padding: 0.0,
                activeToggleColor: theme.primaryColor,
                inactiveToggleColor: Colors.grey,
                showOnOff: true,
                toggleSize: 30.0,
                activeTextColor: theme.primaryColor,
                inactiveTextColor: Colors.grey.withOpacity(0.5),
                valueFontSize: 13,
                height: 30,
              ),
              AppSpaces.vertical20,
            ],
          );
        },
      ),
    );
  }
}

class CustomRoundedRectSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  final Radius trackRadius;
  const CustomRoundedRectSliderTrackShape(this.trackRadius);

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint leftTrackPaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint rightTrackPaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    var activeRect = RRect.fromLTRBAndCorners(
      trackRect.left,
      trackRect.top - (additionalActiveTrackHeight / 2),
      thumbCenter.dx,
      trackRect.bottom + (additionalActiveTrackHeight / 2),
      topLeft: trackRadius,
      bottomLeft: trackRadius,
    );
    var inActiveRect = RRect.fromLTRBAndCorners(
      thumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
      topRight: trackRadius,
      bottomRight: trackRadius,
    );
    var percent =
        ((activeRect.width / (activeRect.width + inActiveRect.width)) * 100)
            .toInt();
    if (percent > 99) {
      activeRect = RRect.fromLTRBAndCorners(
        trackRect.left,
        trackRect.top - (additionalActiveTrackHeight / 2),
        thumbCenter.dx,
        trackRect.bottom + (additionalActiveTrackHeight / 2),
        topLeft: trackRadius,
        bottomLeft: trackRadius,
        bottomRight: trackRadius,
        topRight: trackRadius,
      );
    }

    if (percent < 1) {
      inActiveRect = RRect.fromLTRBAndCorners(
        thumbCenter.dx,
        trackRect.top,
        trackRect.right,
        trackRect.bottom,
        topRight: trackRadius,
        bottomRight: trackRadius,
        bottomLeft: trackRadius,
        topLeft: trackRadius,
      );
    }
    context.canvas.drawRRect(
      activeRect,
      leftTrackPaint,
    );

    context.canvas.drawRRect(
      inActiveRect,
      rightTrackPaint,
    );

    drawText(context.canvas, '%$percent', activeRect.center.dx,
        activeRect.center.dy, pi * 0.5, activeRect.width);
  }

  void drawText(Canvas context, String name, double x, double y,
      double angleRotationInRadians, double height) {
    context.save();
    var span = TextSpan(
        style: TextStyle(
            color: Colors.white, fontSize: height >= 24.0 ? 24.0 : height),
        text: name);
    var tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    context.translate((x + (tp.height * 0.5)), (y - (tp.width * 0.5)));
    context.rotate(angleRotationInRadians);
    tp.layout();
    tp.paint(context, new Offset(0.0, 0.0));
    context.restore();
  }
}
