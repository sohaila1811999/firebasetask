
import 'package:firebasetask/Section/SectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebasetask/locale/locale_controller.dart';
class confirmationPage extends StatelessWidget{
  final TextEditingController confirmationNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Locale_controller controllerLang =Get.find();
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
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
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),

              Center(
                child: Text(
                  "CONFIRM".tr,
                  style: TextStyle(

                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Image.asset('asset/icons/confirmIcon.png'),
              ),
              SizedBox(height: 25),
              Container(width: 300,
                height: 70,
                child: TextFormField(
                validator: (value) {

    if (value!.isEmpty)
    return "1".tr;
    },
                  style:TextStyle(fontSize: 20,color: Colors.white),
                  decoration: new InputDecoration(

                    hintText: "co1".tr,
                    hintStyle:TextStyle(fontSize: 20.0,color: Colors.white) ,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
    ),),
              SizedBox(height: 25),

              Container(width: 304,
                height: 64,

                child: MaterialButton(color:Color.fromRGBO(50, 165, 248, 1),textColor: Colors.white,
                  child: Text('co2'.tr,style: TextStyle(fontSize: 20),),

                  //  minWidth: double.infinity,
                  //height: 70,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  onPressed: (){

    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SectionScreen(),
                        ));

                  },),
              ),


            ],),),),);

  }


}