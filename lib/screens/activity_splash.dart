import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'activity_hospital_details.dart';
import 'activity_patient_list.dart';

class ActivitySplash extends StatefulWidget {
  const ActivitySplash({super.key});

  @override
  State<ActivitySplash> createState() => _ActivitySplashState();
}

class _ActivitySplashState extends State<ActivitySplash> {

  @override
  void initState() {
    splashTimer();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SizedBox(
        height: 100,
        width: 100,
        child: Image.asset("feasibility.png"),
      ),),
    );
  }

  void splashTimer() {
    Timer(const Duration(seconds: 2),
            () {
              Get.off(ActivityPatientList());
            }


    );
  }
}
