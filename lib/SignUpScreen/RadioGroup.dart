import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Doctor';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 1,
          groupValue: id,
          onChanged: (val) {
            setState(() {
              radioButtonItem = 'Doctor';
              id = 1;
            });
          },
        ),
        Text(
          'Doctor',
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Radio(
          value: 2,
          groupValue: id,
          onChanged: (val) {
            setState(() {
              radioButtonItem = 'Nurse';
              id = 2;
            });
          },
        ),
        Text(
          'Nurse',
          style: new TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
