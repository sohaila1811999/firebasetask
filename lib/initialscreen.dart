import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetask/locale/locale_controller.dart';

import 'SignUpScreen/SignUpScreen.dart';
class InitialScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Locale_controller controllerLang =Get.find();
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
        Color(0xff042246),
    Color(0xff041e3e),
    Color(0xff1a5aa0),
    Color(0xff01060c),
    Color(0xff01070e)
    ],
    stops: [0.0, 0.0, 0.01, 0.760, 9.80],
    ),
    ),

    child: Align(

    alignment: Alignment.center,
      child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Image.asset('asset/icons/logo.png')),
        ),
        SizedBox(height: 25),

        ElevatedButton(
      child:  Text("ar".tr),
      onPressed: () {
        controllerLang.changeLang("ar");
        Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => SignUpScreen(),
    ));
    },

      ),
      TextButton(
      onPressed: () {
  controllerLang.changeLang("en");
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => SignUpScreen(),
  ));
  },


      child:Text('en'.tr),

      ),]),
    ),),);
  }
}