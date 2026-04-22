import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/activity_appointment_list.dart';
import 'screens/activity_hospital_details.dart';
import 'screens/activity_patient_detail.dart';
import 'screens/activity_splash.dart';
import 'screens/activity_patient_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ActivitySplash(),

    );
  }
}

