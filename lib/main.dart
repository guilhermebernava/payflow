import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login.dart';
import 'package:payflow/modules/splash/splash.dart';
import 'package:payflow/shared/themes/appColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payflow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: const Login(),
    );
  }
}
