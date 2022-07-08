import 'package:flutter/material.dart';
import '../Nav_drawer/Nav_drawer.dart';

class patientDiagnosis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class myItems {
  bool isExpanded;
  Widget header;
  Widget body;

  myItems({this.isExpanded: false, required this.body, required this.header});
}

TextEditingController diagons = TextEditingController();

int index = 0;
List<myItems> items = [
  myItems(
      body: defaultTextForm(),
      header: const Text(
        'Current Diagnosis',
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFF242456),
          fontWeight: FontWeight.bold,
        ),
      )),
  myItems(
      body: defaultTextForm(),
      header: const Text(
        'Chronic Diseases',
        style: TextStyle(
            fontSize: 20,
            color: Color(0xFF242456),
            fontWeight: FontWeight.bold),
      )),
  myItems(
      body: defaultTextForm(),
      header: const Text(
        'forbidden',
        style: TextStyle(
            fontSize: 20,
            color: Color(0xFF242456),
            fontWeight: FontWeight.bold),
      )),
];

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('asset/icons/Rectangle.png'),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Patient Name:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Gender:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Age:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    ExpansionPanelList(
                      dividerColor: Colors.grey,
                      expandedHeaderPadding: const EdgeInsets.all(3.0),
                      expansionCallback: (panelIndex, isExpanded) {
                        // setState(() {
                        //   items[panelIndex].isExpanded =
                        //       ! items[panelIndex].isExpanded;
                        // });
                      },
                      children: items.map((myItems item) {
                        return ExpansionPanel(
                          headerBuilder: (BuildContext context, bool True) {
                            return item.header;
                          },
                          body: item.body,
                          isExpanded: item.isExpanded,
                          backgroundColor: Colors.white70,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}