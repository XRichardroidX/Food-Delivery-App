import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_store/users/screens/shop/products/salad_details.dart';

class Salad extends StatefulWidget {
  const Salad({Key? key}) : super(key: key);

  @override
  State<Salad> createState() => _SaladState();
}

class _SaladState extends State<Salad> {
  Widget getData() {
    return StreamBuilder(
        stream: (Search.text == "")
            ?
        FirebaseFirestore.instance.collection("Products").doc("salad").collection("Salad").snapshots()
            :
        FirebaseFirestore.instance.collection('Products').doc("salad").collection("Salad").where("Product", arrayContains: Search.text).snapshots(),
        builder: (context, snapshot){
          return snapshot.hasData && !snapshot.hasError ? ListView.builder(
            itemCount: snapshot.data!.docs.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              DocumentSnapshot ds = snapshot.data!.docs[index];
              return Container(child: ProductUi("${ds['Name']}", "${ds['Id']}", "${ds['ImageUrl']}",  "${ds['Price']}"),);
            },
          )
              :
          Center(child: CircularProgressIndicator(),);

        }
    );
  }
  var color = Colors.green;
  Widget ProductUi(String Name, String Id, String Image, String Price){
    return InkWell(
      onTap: (){
        SaladDetails(Id: Id,);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SaladDetails(Id: Id,)),
        );
      },
      child: Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(18.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("$Image"),
              radius: 30.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),child: Text("Name: $Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),)),
                Container(padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),child: Text("Price: $Price")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextEditingController Search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Card(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: 'Search...'),
              onChanged: (value) {
                setState(() {
                  Search.text = value.toLowerCase();
                });
              },
            ),
          )),
      body: Container(
        child: getData(),
      ),
    );
  }
}
