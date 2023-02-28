import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homi/core/route/router.dart';
import 'package:homi/features/repository_registry.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));

  initRegister();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HR Controller',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF867CEF),
        backgroundColor: Color(0xfff0f0f0),
        disabledColor: Color(0xffededed),
        colorScheme: ColorScheme.fromSwatch(accentColor: Color(0xffaf92ea)),
        textTheme: GoogleFonts.openSansTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash',
      onGenerateRoute: CustomRouter.onGenerateRoute,
    );
  }
}
