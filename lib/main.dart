import 'package:flutter/material.dart';
import 'package:pnb/view/addbeneficiary.dart';
import 'package:pnb/view/dashboard.dart';
import 'package:pnb/view/login.dart';
import 'package:pnb/view/practise.dart';
import 'package:pnb/view/sendmoney.dart';
import 'package:pnb/view/settings.dart';
import 'package:pnb/view/signup.dart';
import 'package:pnb/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage() ,
    );
  }
}
