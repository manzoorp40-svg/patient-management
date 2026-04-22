import 'package:flutter/material.dart';

class ActivityAppointmentDetail extends StatefulWidget {
  const ActivityAppointmentDetail({super.key});

  @override
  State<ActivityAppointmentDetail> createState() => _ActivityAppointmentDetailState();
}

class _ActivityAppointmentDetailState extends State<ActivityAppointmentDetail> {
  var textEditingControllerDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Appoitment Details"),
      centerTitle: true,
      backgroundColor: Colors.green,),
      body: Column(
        children: [


          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Symptoms',
              hintText: 'Type something...',
            ),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Weight',
              hintText: 'Type something...',
            ),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'BP',
              hintText: 'Type something...',
            ),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Extra note',
              hintText: 'Type something...',
            ),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Medicines',
              hintText: 'Type something...',
            ),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),
          ElevatedButton(onPressed: (){}, child: Text("Save")),
        ],
      ),

    );
  }
}
