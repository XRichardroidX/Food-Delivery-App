import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_store/authentication/login.dart';
import 'package:food_store/users/screens/profile/orders.dart';
import 'package:image_picker/image_picker.dart';
import '../../admin/backend/auth.dart';
import '../../authentication/register.dart';

class Database{
     Database(FirebaseFirestore DatabaseInstance, BuildContext context);

     //This is a function to pick an image from your Gallery or Camera on your Android Device.
     pickImage(ImageSource source) async {
       final ImagePicker _imagePicker = ImagePicker();
       XFile? _file = await _imagePicker.pickImage(source: source);
       if (_file != null) {
         return await _file.readAsBytes();
       }
     }

     Future<String> ConvertToStringAndDeployToStorage(String ProductName, Uint8List file) async {

       Reference ref = FirebaseStorage.instance.ref().child("Products").child(ProductName);


       UploadTask uploadTask = ref.putData(file);

       TaskSnapshot snap = await uploadTask;
       String downloadUrl = await snap.ref.getDownloadURL();
       return downloadUrl;
     }

     AddMushroomToCloudFireStore(String ImageUrl, String ProductName, String Price, String ProductDescription) {
       FirebaseFirestore.instance.collection("Products").doc("mushroom").collection("Mushroom").doc(ProductName).set(
           {
             "ImageUrl": ImageUrl,
             "Name": ProductName,
             "Price": Price,
             "Description": ProductDescription,
             "Id": ProductName,
           }
       );
     }

     AddPizzaToCloudFireStore(String ImageUrl, String ProductName, String Price, String ProductDescription) {
       FirebaseFirestore.instance.collection("Products").doc("pizza").collection("Pizza").doc(ProductName).set(
           {
             "ImageUrl": ImageUrl,
             "Name": ProductName,
             "Price": Price,
             "Description": ProductDescription,
             "Id": ProductName,
           }
       );
     }

     AddSaladToCloudFireStore(String ImageUrl, String ProductName, String Price, String ProductDescription) {
       FirebaseFirestore.instance.collection("Products").doc("salad").collection("Salad").doc(ProductName).set(
           {
             "ImageUrl": ImageUrl,
             "Name": ProductName,
             "Price": Price,
             "Description": ProductDescription,
             "Id": ProductName,
           }
       );
     }



     SaveToDatabase(String ProductName, String ProductPrice, int Counter, BuildContext context) async {
       try {
         if (Counter != 0) {
           var snapShot = await FirebaseFirestore.instance.collection('Users')
               .doc(FirebaseAuth.instance.currentUser!.uid)
               .get();
           bool? verifiedEmail = FirebaseAuth.instance.currentUser!
               .emailVerified;
                 if (verifiedEmail == null) {
                   verifiedEmail = false;
                 }
                 if (verifiedEmail!) {
                   if (Counter != 0) {
                     Navigator.pushReplacement(
                       context,
                       MaterialPageRoute(builder: (context) => OpenOrders(),),
                     );
                     Map<String, dynamic> data = snapShot.data()!;
                     FirebaseFirestore.instance.collection('Users').doc(
                         "products").collection('Products')
                         .doc("${FirebaseAuth.instance.currentUser!.uid}-$ProductName")
                         .set(
                         {
                           "UserName": data['Name'],
                           "UserId": FirebaseAuth.instance.currentUser!.uid,
                           "ProductId": ProductName,
                           "Phone Number": data['PhoneNumber'],
                           "Email": data['Email'],
                           "ProductName": ProductName,
                           "Price": ProductPrice,
                           "Chart": Counter,
                         }
                     );
                   }
                 }
                 else {
                   showSnackBar(context, "Login and Verify your Account");
                   showSnackBar(context, "A verification link will be sent to your Email");
                   return Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const LoginPage()),
                   );
                 }
         }
       } on FirebaseException catch (error){
         showSnackBar(context, error.message!);
       }
     }

     MailFunction(
         {
           required BuildContext context,
           required String Name,
           required String Email,
           required String PhoneNumber,
           required String Title,
           required String Message,
           required var Date
         }){
       try{
         FirebaseFirestore.instance.collection("Users").doc("mail").collection("Mail").doc("$Date").set(
             {
               "Name": Name,
               "Email": Email,
               "TimeStamp": Date,
               "Id": "$Date",
               "Title": Title,
               "Message": Message,
               "PhoneNumber": PhoneNumber,
             });
       } on FirebaseException catch (error){
         showSnackBar(context, error.message!);
       }
     }
}














//
//
// bool? verifiedEmail = FirebaseAuth.instance.currentUser?.emailVerified;
//
// SaveToDatabase(String ProductName, String ProductPrice, int Counter){
//   return StreamBuilder(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot){
//         if(verifiedEmail == null){
//           verifiedEmail = false;
//         }
//         if (snapshot.connectionState == ConnectionState.active) {
//           if (snapshot.hasData) {
//             if (verifiedEmail!) {
//               if(Counter != 0){
//                 FirebaseFirestore.instance.collection('Users').doc("products").collection('Products').doc(ProductName).set(
//                     {
//                       ProductName: ProductName,
//                       "Price": ProductPrice,
//                       "Chart": Counter,
//                     }
//                 );
//               }
//             }
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('${snapshot.error}'),
//             );
//           }
//         }
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//         return LoginPage();
//       }
//   );
// }