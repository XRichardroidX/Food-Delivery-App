import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_store/admin/admin_screens/admin_help/admin_help_details.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Complaints extends StatelessWidget {
  Complaints({Key? key}) : super(key: key);

  String readTimestamp(int timestamp) {
    var now = DateTime.now();
    var format = DateFormat('HH:mm a');
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 || diff.inSeconds > 0 && diff.inMinutes == 0 || diff.inMinutes > 0 && diff.inHours == 0 || diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + ' DAY AGO';
      } else {
        time = diff.inDays.toString() + ' DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = (diff.inDays / 7).floor().toString() + ' WEEK AGO';
      } else {

        time = (diff.inDays / 7).floor().toString() + ' WEEKS AGO';
      }
    }
    print(time);
    return time;
  }

  DeleteProductFunction(String Id, BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: const Text("You are about to delete this Mail"),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text("Delete Permanently"),
            onPressed: () async {
              Navigator.of(context).pop();
              FirebaseFirestore.instance.collection("Users").doc("mail").collection("Mail").doc(Id).delete();
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text("Cancel"),
            onPressed: () async {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    });
  }



  var TextColor = Colors.white;
  Widget GetOrders() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Users').doc("mail").collection("Mail").snapshots(),
        builder: (context, snapshot){
          return snapshot.hasData && !snapshot.hasError ? ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              DocumentSnapshot MailData = snapshot.data!.docs[index];
              var Time = MailData["TimeStamp"];
              Time = Time.millisecondsSinceEpoch;
             // int Date = DateTime.fromMicrosecondsSinceEpoch(Time) as int;

              return InkWell(
                onLongPress: (){
                  DeleteProductFunction(MailData['Id'], context);
                },
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HelpDetails(Id: MailData['Id'], Time: readTimestamp(Time),)));
                },
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  elevation: 10.0,
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                          child: Text("${MailData['Title']}", style: GoogleFonts.raleway(fontSize: 16.8, color: Colors.black, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Name: ${MailData['Name']}", style: GoogleFonts.raleway(color: Colors.green, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 2.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Email: ${MailData['Email']}", style: GoogleFonts.raleway(color: Colors.green, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 2.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Phone Number: ${MailData['PhoneNumber']}", style: GoogleFonts.raleway(color: Colors.green, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 2.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                            child: Text("${readTimestamp(Time)}", style: GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )
              :
          Center(child: CircularProgressIndicator(),);

        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
            children: [
              GetOrders(),
            ],
          ),
        )
    );
  }
}
