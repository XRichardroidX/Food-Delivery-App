import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'mushroom_details.dart';

class Mushroom extends StatefulWidget {
  const Mushroom({Key? key}) : super(key: key);

  @override
  State<Mushroom> createState() => _MushroomState();
}

class _MushroomState extends State<Mushroom> {
  Widget getData() {
    return StreamBuilder(
        stream: (Search.text == "")
        ?
            FirebaseFirestore.instance.collection("Products").doc("mushroom").collection("Mushroom").snapshots()
            :
        FirebaseFirestore.instance.collection('Products').doc("mushroom").collection("Mushroom").where("Product", arrayContains: Search.text).snapshots(),
        builder: (context, snapshot){
          return snapshot.hasData && !snapshot.hasError ? ListView.builder(
            itemCount: snapshot.data!.docs.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              DocumentSnapshot ds = snapshot.data!.docs[index];
              return Container(child: MushroomsUi("${ds['Name']}", "${ds['Id']}", "${ds['ImageUrl']}",  "${ds['Price']}"),);
            },
          )
              :
          Center(child: CircularProgressIndicator(),);

        }
    );
  }
var color = Colors.green;
  Widget MushroomsUi(String Name, String Id, String Image, String Price){
    return InkWell(
      onTap: (){
        MushroomDetails(Id: Id,);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MushroomDetails(Id: Id,)),
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
