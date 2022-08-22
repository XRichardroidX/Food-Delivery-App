import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminOpenOrders extends StatelessWidget {
  AdminOpenOrders({Key? key}) : super(key: key);


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
