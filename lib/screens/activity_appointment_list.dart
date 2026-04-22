import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../repository/repo_appoinment.dart';
import 'activity_appointment_detail.dart';

class ActivityAppointmentList extends StatefulWidget {
  const ActivityAppointmentList({super.key});

  @override
  State<ActivityAppointmentList> createState() => _ActivityAppointmentListState();
}

class _ActivityAppointmentListState extends State<ActivityAppointmentList> {
  late List<Map<String, String>> listAppointment;
  @override
  void initState() {
    var repoAppointment = RepoAppointment();
    listAppointment = repoAppointment.getListOfAppointment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final name = Get.arguments['patientName'];
    final age = Get.arguments['birthDate'];
    return Scaffold(
      appBar: AppBar(
          title: Text("$name ($age)")
      ),
      body:
      Expanded(child: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          title: Text(listAppointment[index]["Date"]!),
          subtitle: Text(listAppointment[index]["Symptoms"]!),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        );
      }, 
        itemCount: listAppointment.length,
      )),
        floatingActionButton: FloatingActionButton(onPressed: (){
      Get.to((ActivityAppointmentDetail()));
    },

    child: Icon(Icons.add),  ),
    );
  }
}
