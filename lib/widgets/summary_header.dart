import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SummaryHeader extends StatelessWidget {
  const SummaryHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: (() => {}),
      child: Container(
        height: 55,
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        decoration: BoxDecoration(
          color: Colors.white,
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
                    Icon(
                      Icons.thermostat,
                      size: 20,
                      color: theme.primaryColor,
                    ),
                    Text(
                      '25°C',
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
                    Icon(
                      Icons.water_drop_outlined,
                      size: 20,
                      color: theme.primaryColor,
                    ),
                    Text(
                      '80%',
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
                    Icon(
                      Iconsax.sun_1,
                      size: 20,
                      color: theme.primaryColor,
                    ),
                    Text(
                      'Day',
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
