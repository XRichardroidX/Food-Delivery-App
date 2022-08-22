import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_store/users/backend/database.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHelp extends StatefulWidget {
  const UserHelp({Key? key}) : super(key: key);

  @override
  State<UserHelp> createState() => _UserHelpState();
}

class _UserHelpState extends State<UserHelp> {
  String? UserName;
  String? UserEmail;
  String? UserPhoneNumber;
  Map<String, dynamic>? Information;

  TextEditingController TitleController = TextEditingController();
  TextEditingController MessageController = TextEditingController();

  SendReportFunction() async {
    Database(FirebaseFirestore.instance, context).MailFunction(context: context, Name: UserName!, Email: UserEmail!, PhoneNumber: UserPhoneNumber!, Title: TitleController.text, Message: MessageController.text, Date: DateTime.now());
    TitleController.text = "";
    MessageController.text = "";
  }

  Future<Map<String, dynamic>?> GetUserData() async {
    var UserData = await FirebaseFirestore.instance.collection("Users").doc("${FirebaseAuth.instance.currentUser!.uid}").get();
    Map<String, dynamic> snapshot = await UserData.data()!;
      UserName = await snapshot['Name'];
      UserEmail = await snapshot['Email'];
      UserPhoneNumber = await snapshot['PhoneNumber'];
    Map<String, dynamic> DataMap = {
      "Name": UserName,
      "Email": UserEmail,
      "PhoneNumber": UserPhoneNumber,
    };
    return DataMap;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: GetUserData(),
          builder: (context, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              Map<String, dynamic>? data = snapshot.data;
              return !FirebaseAuth.instance.currentUser!.isAnonymous
                  ?
              Center(
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0.0, 570.0, 0.0, 50.0),
                        child: MaterialButton(
                          color: Colors.green,
                          onPressed: (){
                            SendReportFunction();
                          },
                          child: const Text("Send Report", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 25.5, vertical: 30.1),
                      elevation: 8.0,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("Name: ${data!['Name']}", style: GoogleFonts.anaheim(fontSize: 16.0, fontWeight: FontWeight.w600),),
                              ),
                              SizedBox(height: 30.5,),
                              Container(
                                child: Text("E-mail: ${data!['Email']}", style: GoogleFonts.anaheim(fontSize: 16.0, fontWeight: FontWeight.w600),),
                              ),
                              Divider(height: 10.0, thickness: 2.0, color: Colors.black),
                              SizedBox(height: 45.0,),
                              Text("We love to hear from you ❤", style: GoogleFonts.alexBrush(fontSize: 25.0, color: Colors.red, fontWeight: FontWeight.bold),),
                              SizedBox(height: 45.0,),
                              Divider(height: 10.0, thickness: 2.0, color: Colors.black),
                              SizedBox(height: 10.0,),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: TextField(
                                  controller: TitleController,
                                  cursorColor: Colors.green,
                                  style: GoogleFonts.nanumGothic(fontSize: 14.0,),
                                  decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    labelText: "Title",
                                    labelStyle: TextStyle(color: Colors.green, fontSize: 16),
                                    hintText: "Write down the Title of this message here (optional)",
                                    hintStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.5,),
                              Container(
                                child: TextField(
                                  controller: MessageController,
                                  maxLines: 5,
                                  cursorColor: Colors.green,
                                  decoration: InputDecoration(
                                    hintText: "Message",
                                    labelStyle: TextStyle(color: Colors.green),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  :
              Center(child: Text("Your Profile is Empty"));
            }
            return Center(child: CircularProgressIndicator(color: Colors.green,));
          }
      ),
    );
  }
}
