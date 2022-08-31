import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HelpDetails extends StatelessWidget {
  String? Id;
  String? Time;
   HelpDetails({Key? key, this.Time, this.Id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        // inorder to display something on the Canvas
        future: FirebaseFirestore.instance.collection('Users').doc("mail").collection("Mail").doc(Id).get(),
        builder: (context, snapshot) {
          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            // If we got an error
            final DocumentSnapshot<Map<String, dynamic>>? data = snapshot.data;
            return Container(
              child: ListView(
                children: [
                  Card(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 80.0),
                    color: Colors.grey,
                    elevation: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Name: ${data!['Name']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Email: ${data!['Email']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Phone Number: ${data!['PhoneNumber']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("UserID: ${data!['Id']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Mail Title: ${data!['Title']}"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Text("${data!['Message']}"),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("${Time!}"),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
          // Displaying LoadingSpinner to indicate waiting state
          return Center(
            child: CircularProgressIndicator(color: Colors.green,),
          );
        },
      ),
    );
  }
}
