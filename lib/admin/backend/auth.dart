import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_store/users/main_users.dart';

class AuthClass{

  AuthClass({required FirebaseAuth auth});
       var auth = FirebaseAuth.instance;

    void register({required String Name, required String Email, required String Password, PhoneNumber, required BuildContext context,}) async {
      try{
      UserCredential credentials = await auth.createUserWithEmailAndPassword(
          email: Email, password: Password);

      sendEmailVerificationMessage(context);

      Map<String, dynamic> UsersDetails = {
        "Name": Name,
        "Email": Email,
        "Password": Password,
        "PhoneNumber": PhoneNumber,
        "UserId": auth.currentUser!.uid,
      };

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(auth.currentUser!.uid)
          .set(UsersDetails);
    }
      on FirebaseAuthException catch (error) {
      showSnackBar(context, error.message!);
      }
  }

  void login({required String Email, required String Password, required BuildContext context}) async {
    try{
      UserCredential credentials = await auth.signInWithEmailAndPassword(
          email: Email, password: Password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainUsers()),
      );
    }
    on FirebaseAuthException catch (error) {
      showSnackBar(context, error.message!);
    }
  }

  Future<void> resetPassword({required BuildContext context, required String Email}) async {
    try{
      if(Email != null) {
        auth.sendPasswordResetEmail(email: Email);
        showSnackBar(context, "Reset Password request has been sent to this E-mail");
      }
    }on FirebaseException catch (error){
      showSnackBar(context, error.message!);
    }
  }



  Future<void> sendEmailVerificationMessage(BuildContext context) async {
    try {
      auth.currentUser!.sendEmailVerification();
      showSnackBar(context, "Email Verification has been sent");
    } on FirebaseException catch (error) {
      showSnackBar(context, error.message!);
    }
  }



}



void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

