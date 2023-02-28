import 'package:flutter/material.dart' show Alignment, LinearGradient, ThemeData;

LinearGradient appGradient(ThemeData theme) => LinearGradient(
      colors: [
        theme.primaryColor,
        theme.colorScheme.secondary,
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    );
