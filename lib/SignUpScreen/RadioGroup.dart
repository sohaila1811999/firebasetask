import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetask/locale/locale_controller.dart';


class RadioGroup extends StatefulWidget {
  Locale_controller controllerLang =Get.find();
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
              radioButtonItem = "doctor".tr;
              id = 1;
            });
          },
        ),
        Text(
     "doctor".tr,
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
              radioButtonItem = "nurse".tr;
              id = 2;
            });
          },
        ),
        Text(
          "nurse".tr,
          style: new TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
