import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {


  Widget getComplaintsMessages() {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Users').snapshots(),
        builder: (context, snapshot){
          return snapshot.hasData && !snapshot.hasError ? ListView.builder(
            itemCount: snapshot.data!.docs.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              DocumentSnapshot ds = snapshot.data!.docs[index];
              return Center(child: Text("${ds['Name']}"));
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
      body: Center(child: getComplaintsMessages(),),
    );
  }
}
