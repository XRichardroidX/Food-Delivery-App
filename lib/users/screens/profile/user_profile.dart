import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_store/authentication/login.dart';
import 'package:food_store/users/screens/profile/orders.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Map<String, dynamic>? UserProfileResult;
  String? ProfileUrl;
  String? Name;
  String? Email;
  String? Phone;
  Future<Map<String, dynamic>?> getUserProfile() async {
    var snapShot = await FirebaseFirestore.instance.collection("Users").doc("${FirebaseAuth.instance.currentUser!.uid}").get();
    if (snapShot.exists) {
      Map<String, dynamic> data = snapShot.data()!;

      ProfileUrl = data['ImageUrl'];
      Name = data['Name'];
      Email = data['Email'];
      Phone = data['PhoneNumber'];
      UserProfileResult = {
        "ProfilePhoto": ProfileUrl,
        "UserName": Name,
        "Email": Email,
        "PhoneNO": Phone,
      };
    }
    return UserProfileResult;
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          FutureBuilder(
              future: getUserProfile(),
              builder: (context, snapshot) {
                // Checking if future is resolved or not
                if (snapshot.connectionState == ConnectionState.done) {
                  // If we got an error
                  Map<String, dynamic>? data = snapshot.data;
                  return !FirebaseAuth.instance.currentUser!.isAnonymous
                          ?
                    Card(
                    margin: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0.0),
                    elevation: 10.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0.0),
                      height: MediaQuery.of(context).size.width * 0.95,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 54.0,
                            child: Card(
                              color: Colors.green,
                              elevation: 8.0,
                              child: Container(padding: EdgeInsets.all(10.0),child: Text("Name: ${data!['UserName']}", style: GoogleFonts.roboto(fontSize: 16.0, color: Colors.white),),),
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 54.0,
                            child: Card(
                              color: Colors.green,
                              elevation: 8.0,
                              child: Container(padding: EdgeInsets.all(10.0),child: Text("Email: ${data!['Email']}", style: GoogleFonts.roboto(fontSize: 14.0, color: Colors.white),),),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FirebaseAuth.instance.currentUser!.isAnonymous ? LoginPage() : OpenOrders(),
                              ),
                              );
                            },
                            child: Container(
                              color: Colors.grey,
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 54.0,
                              child: Card(
                                color: Colors.green,
                                elevation: 8.0,
                                child: Container(padding: EdgeInsets.all(10.0),child: Text("Orders:   Click to Open Order List", style: GoogleFonts.roboto(fontSize: 15.0, color: Colors.white),),),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 54.0,
                            child: Card(
                              color: Colors.green,
                              elevation: 8.0,
                              child: Container(padding: EdgeInsets.all(10.0),child: Text("Phone NO: ${data!['PhoneNO']}", style: GoogleFonts.roboto(fontSize: 15.0, color: Colors.white),),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                      :
                Center(child: Text("Your Profile is Empty"));
                }
                return Center(child: CircularProgressIndicator(color: Colors.green,));
              }
          ),
        ],
      ),
    );
  }
}

























































// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class UserProfile extends StatefulWidget {
//   const UserProfile({Key? key}) : super(key: key);
//
//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }
//
// class _UserProfileState extends State<UserProfile> {
//   Map<String, dynamic>? UserProfileResult;
//   String? ProfileUrl;
//   String? Name;
//   String? Email;
//   String? Phone;
//
//   Future<Map<String, dynamic>?> getUserProfile() async {
//     var snapShot = await FirebaseFirestore.instance.collection("Users").doc("${FirebaseAuth.instance.currentUser!.uid}").get();
//
//     if (snapShot.exists) {
//       Map<String, dynamic> data = snapShot.data()!;
//
//       ProfileUrl = data['ImageUrl'];
//       Name = data['Name'];
//       Email = data['Email'];
//       Phone = data['PhoneNumber'];
//       UserProfileResult = {
//         "ProfilePhoto": ProfileUrl,
//         "UserName": Name,
//         "Email": Email,
//         "PhoneNO": Phone,
//       };
//     }
//     return UserProfileResult;
//   }
//
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getUserProfile(),
//         builder: (context, snapshot) {
//           // Checking if future is resolved or not
//           if (snapshot.connectionState == ConnectionState.done) {
//             // If we got an error
//             Map<String, dynamic>? data = snapshot.data;
//             return Center(
//               child: Container(
//                 color: Colors.white,
//                 child: ListView(
//                   physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
//                   children: [
//                     Stack(
//                       children: [
//                         Center(
//                           child: Container(
//                             padding: EdgeInsets.all(10.0),
//                             color: Colors.grey,
//                             margin: EdgeInsets.fromLTRB(10.0, 220.0, 10.0, 0.0),
//                             height: MediaQuery.of(context).size.width * 0.95,
//                             width: MediaQuery.of(context).size.width * 0.95,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   color: Colors.grey,
//                                   width: MediaQuery.of(context).size.width * 0.9,
//                                   height: 54.0,
//                                   child: Card(
//                                     color: Colors.green,
//                                     elevation: 8.0,
//                                     child: Container(padding: EdgeInsets.all(10.0),child: Text("Name: ${data!['UserName']}", style: GoogleFonts.roboto(fontSize: 16.0, color: Colors.white),),),
//                                   ),
//                                 ),
//                                 Container(
//                                   color: Colors.grey,
//                                   width: MediaQuery.of(context).size.width * 0.9,
//                                   height: 54.0,
//                                   child: Card(
//                                     color: Colors.green,
//                                     elevation: 8.0,
//                                     child: Container(padding: EdgeInsets.all(10.0),child: Text("Email: ${data!['Email']}", style: GoogleFonts.roboto(fontSize: 14.0, color: Colors.white),),),
//                                   ),
//                                 ),
//                                 InkWell(
//                                   onTap: (){},
//                                   child: Container(
//                                     color: Colors.grey,
//                                     width: MediaQuery.of(context).size.width * 0.9,
//                                     height: 54.0,
//                                     child: Card(
//                                       color: Colors.green,
//                                       elevation: 8.0,
//                                       child: Container(padding: EdgeInsets.all(10.0),child: Text("Orders:   Click to Open Order List", style: GoogleFonts.roboto(fontSize: 15.0, color: Colors.white),),),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   color: Colors.grey,
//                                   width: MediaQuery.of(context).size.width * 0.9,
//                                   height: 54.0,
//                                   child: Card(
//                                     color: Colors.green,
//                                     elevation: 8.0,
//                                     child: Container(padding: EdgeInsets.all(10.0),child: Text("Phone NO: ${data!['PhoneNO']}", style: GoogleFonts.roboto(fontSize: 15.0, color: Colors.white),),),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         // Center(
//                         //   child: Container(
//                         //     margin: EdgeInsets.fromLTRB(10.0, 120.0, 10.0, 0.0),
//                         //     child: CircleAvatar(
//                         //       backgroundImage: NetworkImage("${data!['ProfilePhoto']}"),
//                         //       radius: 60.0,
//                         //     ),
//                         //   ),
//                         // ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             );
//           }
//           return Center(child: CircularProgressIndicator(color: Colors.green,));
//         }
//       ),
//     );
//   }
// }
