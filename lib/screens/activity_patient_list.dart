import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repository/repo_patient.dart';
import 'activity_appointment_list.dart';
import 'activity_hospital_details.dart';
import 'activity_patient_detail.dart';

class ActivityPatientList extends StatefulWidget {
  const ActivityPatientList({super.key});

  @override
  State<ActivityPatientList> createState() => _ActivityPatientListState();
}

class _ActivityPatientListState extends State<ActivityPatientList> {
  late List<Map<String, String>> listPatient;
  @override
  void initState() {
    RepoPatient repoPatient = RepoPatient();
    listPatient = repoPatient.getListOfPatient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient List"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Patient Name',
              hintText: 'Type something...',
            ),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),

          //list of patient
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            var patientItem = listPatient[index];
            return ListTile(
              title: Text("${patientItem['name']} (${patientItem[('dob')]})"),
              subtitle: Text(patientItem['mobile']!),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Get.to(ActivityAppointmentList(), arguments: {
                  "patientName": patientItem['name'],
                  "birthDate": patientItem['dob']
                });
              },
            );
          },
            itemCount: listPatient.length,
          ))
        ],
      ),
      drawer: Drawer(
        child: ListTile(
          title: Text("My Hospital"),
          onTap: () {
            Get.to(ActivityHospitalDetails());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(ActivityPatientDetail());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
