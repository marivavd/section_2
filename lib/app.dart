import 'package:flutter/material.dart';
import 'package:section_2/signup_page.dart';

import 'home_page.dart';
import 'login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 5, 96, 250)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}