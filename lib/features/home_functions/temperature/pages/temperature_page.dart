import 'package:flutter/material.dart';
import 'package:homi/features/home_functions/temperature/controllers/temperature/temperature_controller.dart';
import 'package:homi/widgets/devices_data.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:homi/utils/spaces_util.dart';
import 'package:homi/widgets/buttons.dart';

class TemperaturePage extends StatelessWidget {
  final TemperatureController temperatureController = TemperatureController();

  TemperaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(children: [
        AppSpaces.vertical30,
        AppSpaces.vertical30,
        AppSpaces.vertical30,
        Text(
          'Today',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w200,
          ),
        ),
        AppSpaces.vertical30,
        ValueListenableBuilder<TemperatureState>(
          valueListenable: temperatureController,
          builder: (context, state, __) {
            if (state is TemperatureSuccessState) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                      customColors: CustomSliderColors(
                        trackColor: theme.disabledColor,
                        dotColor: theme.disabledColor,
                        progressBarColor: theme.primaryColor,
                      ),
                      startAngle: 130.0,
                      angleRange: 280.0,
                      size: size.height,
                      customWidths: CustomSliderWidths(
                          progressBarWidth: 5, handlerSize: 10),
                    ),
                    min: 0,
                    max: 40,
                    initialValue: state.temperature,
                    innerWidget: (percentage) => Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 7,
                                  spreadRadius: 8,
                                ),
                              ],
                            ),
                            child: Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: theme.primaryColor,
                                    width: 1,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    '${percentage.toStringAsFixed(0)}°C',
                                    style: TextStyle(
                                      fontSize: 15 + (22 * 683 / size.height),
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ))),
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
        CircleButton(),
        AppSpaces.vertical10,
        AppSpaces.vertical10,
        AppButton(
          onPressed: () {},
          text: 'Set air conditioner',
        ),
        AppSpaces.vertical30,
      ]),
    );
  }
}
