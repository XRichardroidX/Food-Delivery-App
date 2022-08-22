import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_store/users/backend/database.dart';

class PizzaDetails extends StatefulWidget {
  String? Id;
  PizzaDetails({Key? key, this.Id}) : super(key: key);

  @override
  State<PizzaDetails> createState() => _PizzaDetailsState();
}

class _PizzaDetailsState extends State<PizzaDetails> {
  var Counter = 0;

  Increament(){
    setState(() {
      Counter += 1;
    });
  }

  Decreament(){
    setState(() {
      if(Counter > 0){
        Counter -= 1;
      }
    });
  }

  DisplayChart(){
    return Counter;
  }

  String?  ProductDetails;

  String? ImageUrl;

  String? Price;

  String? Name;

  Future<String> getProductDetails() async {
    var snapShot = await FirebaseFirestore.instance.collection("Products").doc("pizza").collection("Pizza").doc(widget.Id).get();

    if (snapShot.exists) {
      Map<String, dynamic> data = snapShot.data()!;
      ProductDetails = data['Description'];
      ImageUrl = data['ImageUrl'];
      Name = data['Name'];
      Price = data['Price'];
    }
    return ProductDetails!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        // inorder to display something on the Canvas
        future: getProductDetails(),
        builder: (context, snapshot) {
          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            // If we got an error
            final String? data = snapshot.data;
            return Stack(
              children: [
                ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("$ImageUrl"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(padding: EdgeInsets.all(0.0), margin: EdgeInsets.fromLTRB(0.0, 245.0, 0.0, 0.0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.black),child: Text("$Name", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.white),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "$ProductDetails""\n\n""Price: $Price",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MaterialButton(onPressed: (){Database(FirebaseFirestore.instance, context).SaveToDatabase(Name!, Price!, Counter, context);}, color: Colors.green, minWidth: 30.0, height: 50.0, child: Text("Order now"),),
                        SizedBox(width: 25.9,),
                        IconButton(icon: Icon(Icons.add), onPressed: () {Increament();},),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          color: Colors.brown,
                          padding: EdgeInsets.all(10.0),
                          child: Text("${DisplayChart()}"),
                        ),
                        IconButton(icon: Icon(Icons.remove), onPressed: () { Decreament(); },),
                      ],
                    ),
                  ],
                ),
              ],
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
