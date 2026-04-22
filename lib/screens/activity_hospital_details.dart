import 'package:flutter/material.dart';

class ActivityHospitalDetails extends StatefulWidget {
  const ActivityHospitalDetails({super.key});

  @override
  State<ActivityHospitalDetails> createState() => _ActivityHospitalDetailsState();
}

class _ActivityHospitalDetailsState extends State<ActivityHospitalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hospital Details"),
    centerTitle: true,
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,),
    body: Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Hospital Name',
            hintText: 'Type something...',
          ),
          onChanged: (text) {
            print('Text changed to: $text');
          },
          onSubmitted: (text) {
            print('Submitted: $text');
          },
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Dr Name',
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
              labelText: 'Degree',
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
            labelText: 'Registration Number',
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
            labelText: 'Phone No.',
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
            labelText: 'Address',
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
            labelText: 'District',
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
            labelText: 'City',
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
            labelText: 'State',
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
            labelText: 'Email',
            hintText: 'Type something...',
          ),

        ),
        ElevatedButton(onPressed: (

            ){
          
        }, child: const Text("Save")),





      ],
    )

    );
  }
}
