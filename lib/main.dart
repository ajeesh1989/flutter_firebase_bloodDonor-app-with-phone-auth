import 'package:firebase_datalist/project1/add.dart';
import 'package:firebase_datalist/project1/auth/otp.dart';
import 'package:firebase_datalist/project1/auth/phone.dart';
import 'package:firebase_datalist/project1/homePage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_datalist/project1/update.dart';
import 'package:get/get.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      title: 'Blood Donation Details',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignIn(),
        '/add': (context) => const AddUser(),
        '/update': (context) => const UpdateUser(),
        '/otp': (context) => const OTPscreen(),
        '/home': (context) => const HomePage(),
      },
      initialRoute: '/',
    );
  }
}
