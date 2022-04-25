
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../logInScreen/logInScreen.dart';
import '../model/user_model.dart';
import 'RadioGroup.dart';


class SignUpScreen extends StatefulWidget {

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _auth = FirebaseAuth.instance;
  String? errorMessage;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController idNumberController = TextEditingController();
  final TextEditingController sectionNameController = TextEditingController();

// String userName="";
//
//   String idNumber="";
//
//   String email="";
//
//   String password="";
//
//   String phoneNumber="";
//
//   String sectionName="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(key: _formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      controller:userNameController ,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      onSaved: (value){
                     userNameController.text=value!;


                      },
                      textInputAction: TextInputAction.next,

                  // onChanged: (textValue){
                  //   userName=textValue;
                  // },
                      validator: (value) {
                        RegExp regex = new RegExp(r'^.{3,}$');
                        if (value!.isEmpty) {
                          return 'user name cannot be empty';
                        }
                        if(!regex.hasMatch(value)){

                          return "Please enter valid user name(Min. 3 character) ";
                        }
                        return null;
                      },
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 20),
                          child: CircleAvatar(
                              child: Icon(Icons.person,
                                color: Colors.white,
                                size: 50,
                              ),
                              backgroundColor: Color.fromRGBO(50, 165, 248, 1),
                              radius: 30),
                        ),
                        labelText: "  USERNAME",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 300,
                    height: 60,
                    child: TextFormField(

                      controller:idNumberController ,
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      onSaved: (value){
                        idNumberController.text=value!;


                      },
                      textInputAction: TextInputAction.next,

    // onChanged: (idValue){
    //      idNumber=idValue;},
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'please enter ID number';
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 20),
                          child: CircleAvatar(
                              child: Icon(Icons.web_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              backgroundColor: Color.fromRGBO(50, 165, 248, 1),
                              radius: 30),
                        ),
                        labelText: "  ID NUMBER ",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      controller:emailController ,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      onSaved: (value){
                        emailController.text=value!;


                      },
                      textInputAction: TextInputAction.next,

                      // onChanged: (emailValue){
                      //  email=emailValue;},
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'please enter your email';
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon:
                         const CircleAvatar(
                              child: Icon(Icons.email,
                                color: Colors.white,
                                size: 40,
                              ),
                              backgroundColor: Color.fromRGBO(50, 165, 248, 1),
                              radius: 30),

                        labelText: "      EMAIL",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),


                    ),),

                  SizedBox(height: 25),
                  Container(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      controller:passwordController ,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autofocus: false,
                      onSaved: (value){
                        passwordController.text=value!;


                      },
                      textInputAction: TextInputAction.next,

                      // onChanged: (passwordValue){
                      //   password=passwordValue;},
                      // validator: (value) {
                      //   RegExp regex = new RegExp(r'^.{6,}$');
                      //   if (value!.isEmpty) {
                      //     return 'password is required for login';
                      //   }
                      //   if(!regex.hasMatch(value)){
                      //
                      //     return "Please enter valid password(Min. 6 character) ";
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(end: 20),
                          child: CircleAvatar(
                              child: Icon(Icons.lock,
                                color: Colors.white,
                                size: 40,
                              ),
                              backgroundColor: Color.fromRGBO(50, 165, 248, 1),
                              radius: 30),
                        ),
                        labelText: "  PASSOWRD ",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),


                    ),
                  ),
                  const SizedBox(height: 25),
    Container(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      controller:sectionNameController ,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      onSaved: (value){
                        sectionNameController.text=value!;


                      },
                      textInputAction: TextInputAction.done,

                      // onChanged: (sectionNameValue){
                      //   sectionName=sectionNameValue;},
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'please enter section name';
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        prefixIcon: CircleAvatar(
                            child: Icon(Icons.account_balance_outlined,
                              color: Colors.white,
                              size: 40,
                            ),
                            backgroundColor: Color.fromRGBO(50, 165, 248, 1),
                            radius: 30),
                        labelText: "     SECTION NAME",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: 25),
                  RadioGroup(),
                  SizedBox(height: 25),
    //
                  ElevatedButton(
                      child: Text(
                        "CONFIRM NOW",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(

                        //onSurface: surfaceColor,
                        fixedSize: const Size(double.infinity, 60),
                        primary: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                      onPressed: () {
                        signUp(emailController.text, passwordController.text);
    }
    // ),
         ),


                ],
              ),
            ),
          ),
        ),
      ),
    );



  }
  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.userName = userNameController.text;
    userModel.sectionName = sectionNameController.text;
    userModel.idNumber =idNumberController.text;
    userModel.phoneNumber=phoneNumberController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false);
  }

}
