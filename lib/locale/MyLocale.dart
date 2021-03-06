import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyLocale extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    "ar":{"username": "  اسم المستخدم",
      "ar":"العربية",
      "en":"الانجليزية",
      "email":"  الايميل",
      "password": "  كلمة السر",
      "idnumber": "  رقم الهوية الشخصية ",
      "phone":"رقم الهاتف",
      "section": "اسم القسم",
      "doctor": "طبيب",
      "nurse":"ممرض",
      "signup" : "تسجيل الحساب",
      "confirm":"تأكيد الهوية",
      "login":"تسجيل دخول",
      "1":"اسم المستخدم لا يجب أن يكون فارغا",
      "2":"الرجاء إدخال اسم مستخدم صالح (3 أحرف على الأقل)",
      "3":"يبدو أن عنوان بريدك الإلكتروني غير منسق.",
      "4":"كلمة المرور الخاصة بك خاطئة.",
      "5":"مستخدم هذا البريد الإلكتروني غير موجود.",
      "6":"تم تعطيل المستخدم مع هذا البريد الإلكتروني.",
        "7":"طلبات كثيرة جدا",
      "8":"لم يتم تمكين تسجيل الدخول باستخدام البريد الإلكتروني وكلمة المرور.",
       "9":"حدث خطأ غير محدد.",
      "10":"تم تسجيل الحساب بنجاح",
      "11":"كلمة السر مطلوبة لتسجيل الدخول",
      "12":"الرجاء إدخال كلمة سر صالحة (6 أحرف على الأقل)",
      "13":"الرجاء إدخال البريد الإلكنترونى الخاص بك",
      "14":"الرجاء إدخال بريد الإلكنترونى صحيح",
      "CONFIRM":" تأكيدالهوية",
      "co1":"أضف رقم التأكيد",
      "co2":"تسجيل",
      "r1": "غرفة 1",
      "r2":"غرفة 2",
      "r3" :"غرفة 3",
      "r4":"غرفة 4",
      "r5":"غرفة 5",
      "r6":"غرفة 6",
      "r7":"غرفة 7",
      "r8":"غرفة 8",
      "r9": "غرفة 9",
      "r10":"غرفة 10",
      "cuurentdiagnosis":"التشخيص",
      "chronicdiseases":"الأمراض المزمنة",
      "forbidden":"الممنوعات",
      "prescription":"الوصفة الطبية",
      "updateinfo":"تحديث",
      "save":"حفظ",
      "heartbeats":"نبض القلب",
      "oxygenrate":"نسبة الأكسجين",
      "bloodpressure":"ضغط الدم",
      "temperature":"درجة الحرارة",



    },
    "en":{
      "ar":"Arabic",
      "en":"English",
      "username": "  USERNAME",
      "email": "Email",
      "password": "Password",
      "idnumber": "  ID NUMBER ",
      "phone":"Phone Number",
      "section": "Section Name",
      "doctor": "Doctor",
      "signup": "Sign Up",
      "confirm":"CONFIRM NOW",
      "login":"LOG IN"   ,
      "1":"user name cannot be empty",
      "2":"Please enter valid user name(Min. 3 character) ",
      "3":"Your email address appears to be malformed.",
      "4":"Your password is wrong.",
"5":"User with this email doesn't exist.",
"6":"User with this email has been disabled.",
"7":"Too many requests",
      "8":"Signing in with Email and Password is not enabled.",
      "9":"An undefined Error happened.",
      "10":"Account created successfully ",
      "11":"password is required for login",
      "12":"Please enter valid password(Min. 6 character)",
      "13":"Please enter your email",
      "14":"Please Enter a valid Email",
      "CONFIRM":"CONFIRM",
    "co1":"Add confirm password",
      "co2":"REGISTER",
     "r1": "ROOM 1",
      "r2":"ROOM 2",
     "r3" :"ROOM 3",
      "r4":"ROOM 4",
      "r5":"ROOM 5",
      "r6":"ROOM 6",
      "r7":"ROOM 7",
      "r8":"ROOM 8",
     "r9": "ROOM 9",
      "r10":"ROOM 10",
      "cuurentdiagnosis":"Current Diagnosis",
      "chronicdiseases":"Chronic Diseases",
      "forbidden":"Forbidden",
      "prescription":"Prescription",
      "updateinfo":"Update Info",
      "save":"Save",
      "heartbeats":"Heart Beats",
      "oxygenrate":"Oxygen Rate",
      "bloodpressure":"Blood Pressure",
      "temperature":"Temperature",


    },


  };
}