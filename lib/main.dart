import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasetask/Section/SectionScreen.dart';
import 'package:firebasetask/initialscreen.dart';
import 'package:firebasetask/locale/MyLocale.dart';
import 'package:firebasetask/locale/locale_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'logInScreen/logInScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

SharedPreferences? mySharedPreferences;
Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  mySharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(Locale_controller());
    return  GetMaterialApp(
      translations:MyLocale(),
         localizationsDelegates: [
           GlobalMaterialLocalizations.delegate,
           GlobalCupertinoLocalizations.delegate,
           GlobalWidgetsLocalizations.delegate,
         ],
      supportedLocales: [
        Locale("en", ""),
        Locale("ar", ""),
      ],
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              mySharedPreferences!.setString("lang",currentLang.languageCode) ;
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },

      debugShowCheckedModeBanner: false,
    home: MainPage(),
    );}
}

class MainPage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return SectionScreen();
          }
          else{
            return InitialScreen();
          }

        },
      ),



    );
  }
}