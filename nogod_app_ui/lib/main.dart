import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nogod_app_ui/pages/nogod_home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NogodHomePage(),
    );
  }
}
