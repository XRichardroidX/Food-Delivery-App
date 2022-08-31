import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminOpenOrders extends StatelessWidget {
  AdminOpenOrders({Key? key}) : super(key: key);

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
    return time;
  }

  DeleteProductFunction(String Id, BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: const Text("You are about to delete this Order"),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text("Delete Permanently"),
            onPressed: () async {
              Navigator.of(context).pop();
              FirebaseFirestore.instance.collection("Users").doc("products").collection("Products").doc(Id).delete();
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
        stream: FirebaseFirestore.instance.collection('Users').doc("products").collection("Products").snapshots(),
        builder: (context, snapshot){
          return snapshot.hasData && !snapshot.hasError ? ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              DocumentSnapshot OrderDetails = snapshot.data!.docs[index];
              var Time = OrderDetails["TimeStamp"];
              Time = Time.millisecondsSinceEpoch;
              return InkWell(
                onLongPress: (){
                  DeleteProductFunction(OrderDetails['ProductId'], context);
                },
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  elevation: 10.0,
                  color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Name: ${OrderDetails['UserName']}", style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 8.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Product Name: ${OrderDetails['ProductName']}", style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 8.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Price/Unit: ${OrderDetails['Price']}", style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 8.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                        child: Text("Number of Units: ${OrderDetails['Chart']}", style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),),
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
