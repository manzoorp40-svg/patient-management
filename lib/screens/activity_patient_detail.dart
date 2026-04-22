import 'package:flutter/material.dart';

class ActivityPatientDetail extends StatefulWidget {
  const ActivityPatientDetail({super.key});

  @override
  State<ActivityPatientDetail> createState() => _ActivityPatientDetailState();
}

class _ActivityPatientDetailState extends State<ActivityPatientDetail> {
  var textEditingControllerFirst = TextEditingController();
  var textEditingControllerLast = TextEditingController();
  var textEditingControllerPinCode = TextEditingController();
  var textEditingControllerMobNo1 = TextEditingController();
  var textEditingControllerMobNo2 = TextEditingController();
  var textEditingControllerCity = TextEditingController();
  var textEditingControllerDistrict = TextEditingController();
  var textEditingControllerState = TextEditingController();
  var textEditingControllerDateofBirth = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient and Appointment Details"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingControllerFirst,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: textEditingControllerLast,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    hintText: 'Type something...',
                  ),
                  onChanged: (text) {
                    debugPrint('Text changed to: $text');
                  },
                  onSubmitted: (text) {
                    debugPrint('Submitted: $text');
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingControllerMobNo1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile No.1',
                    hintText: 'Type something...',
                  ),
                  onChanged: (text) {
                    debugPrint('Text changed to: $text');
                  },
                  onSubmitted: (text) {
                    debugPrint('Submitted: $text');
                  },
                ),
              ),
              Expanded(
                  child: TextField(
                controller: textEditingControllerMobNo2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile No.2',
                  hintText: 'Type something...',
                ),
                onChanged: (text) {
                  debugPrint('Text changed to: $text');
                },
                onSubmitted: (text) {
                  debugPrint('Submitted: $text');
                },
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingControllerCity,
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
              ),
              Expanded(
                child: TextField(
                  controller: textEditingControllerPinCode,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pin Code',
                    hintText: 'Type something...',
                  ),
                  onChanged: (text) {
                    debugPrint('Text changed to: $text');
                  },
                  onSubmitted: (text) {
                    debugPrint('Submitted: $text');
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textEditingControllerDistrict,
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
              ),
              Expanded(
                child: TextField(
                  controller: textEditingControllerState,
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
              ),
            ],
          ),
          TextField(
            controller: textEditingControllerDateofBirth,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date of Birth',
                hintText: 'Type something...',
                suffixIcon: IconButton(
                    onPressed: () async {
                      {
                        //code block
                        final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );

                        if (picked != null) {
                          debugPrint("selected date: $picked");
                          textEditingControllerDateofBirth.text =
                              picked.toString();
                        }
                      }
                      ;
                    },
                    icon: Icon(Icons.calendar_month))),
            onChanged: (text) {
              debugPrint('Text changed to: $text');
            },
            onSubmitted: (text) {
              debugPrint('Submitted: $text');
            },
          ),
          ElevatedButton(onPressed: () {
            var strFirst = textEditingControllerFirst.text;
            var strLast = textEditingControllerLast.text;
            var strPinCode = textEditingControllerPinCode.text;
            var strMonNo1 = textEditingControllerMobNo1.text;
            var strMobNo2 = textEditingControllerMobNo2.text;
            var strCity = textEditingControllerCity.text;
            var strDistrict = textEditingControllerDistrict.text;
            var strState = textEditingControllerState.text;
            var strDateOfBirth = textEditingControllerDateofBirth.text;


            var strInsertPatient = "INSERT INTO patient (first, last, pinCode, mob1, mob2, city, district, state, dob) VALUES ('$strFirst', '$strLast', '$strPinCode', $strMonNo1', $strMobNo2, '$strCity', '$strDistrict', '$strState', '$strDateOfBirth')";
            debugPrint(strInsertPatient);
          }, child: Text("Save"))
        ],
      ),
    );
  }
}
