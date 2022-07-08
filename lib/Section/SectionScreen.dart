import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//import '../Dr_profile/ButtonWithIcon.dart';
import '../Dr_profile/ProfileScreen.dart';
import '../Nav_drawer/Nav_drawer.dart';

class SectionScreen extends StatefulWidget {


  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  List<String> sectionsName = [
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
    "SECTION NAME",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image.asset("asset/images/building.png")),
              ),
              const Text(
                'Section Name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => buttonWithIcon(
                        backGround: Colors.white,
                        txt: sectionsName[index],
                        imagePath: "asset/icons/section icon.png",
                        onPress: () {}),
                    itemCount: sectionsName.length,
                    separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonWithIcon({
    Color backGround = Colors.white,
    required String txt,
    required Function() onPress,
    required String imagePath,
  }) =>
      ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ));
        },
        icon: CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xFF32A5F8),
          // 0xFF for spcifying  transparency
          child: Image.asset(
            imagePath,
            matchTextDirection: true,
            width: 50,
            height: 50,
          ),
        ),
        label: Text(
          txt,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xff041e3e),
            fontSize: 22.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 45),
          alignment: AlignmentDirectional.centerStart,
          primary: backGround,
          padding: const EdgeInsetsDirectional.only(start: 0.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      );
}