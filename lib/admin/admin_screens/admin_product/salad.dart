import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_store/admin/admin_screens/admin_product/add_salad.dart';
import '../../../users/screens/shop/products/salad_details.dart';

class AdminSalad extends StatefulWidget {
  const AdminSalad({Key? key}) : super(key: key);

  @override
  State<AdminSalad> createState() => _AdminSaladState();
}

class _AdminSaladState extends State<AdminSalad> {



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
        SaladDetails(Id: Id,);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SaladDetails(Id: Id,)),
        );
      },
      child: Card(
        elevation: 25.0,
        color: color,
        margin: EdgeInsets.all(8.0),
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
            Expanded(child: Text(""), flex: 2,),
            IconButton(onPressed: (){
              DeleteProductFunction(Id, Image, context);
            }, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }

  TextEditingController Search = TextEditingController();
  DeleteProductFunction(String Id, String ImageUrl, BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: const Text("You are about to delete a product"),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text("Delete Product"),
            onPressed: () async {
              Navigator.of(context).pop();
              FirebaseFirestore.instance.collection("Products").doc("salad").collection("Salad").doc(Id).delete();
              FirebaseStorage.instance.refFromURL(ImageUrl).delete();
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddSalad(),),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
