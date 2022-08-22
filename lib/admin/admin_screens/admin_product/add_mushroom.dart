import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../users/backend/database.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({Key? key}) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {








  //
  // bool? verifiedEmail = FirebaseAuth.instance.currentUser?.emailVerified;
  //
  // SaveToDatabase(String ProductName, String ProductPrice, int Counter){
  //   return StreamBuilder(
  //       stream: FirebaseAuth.instance.authStateChanges(),
  //       builder: (context, snapshot){
  //         if(verifiedEmail == null){
  //           verifiedEmail = false;
  //         }
  //         if (snapshot.connectionState == ConnectionState.active) {
  //           if (snapshot.hasData) {
  //             if (verifiedEmail!) {
  //               if(Counter != 0){
  //                 FirebaseFirestore.instance.collection('Users').doc("products").collection('Products').doc(ProductName).set(
  //                     {
  //                       ProductName: ProductName,
  //                       "Price": ProductPrice,
  //                       "Chart": Counter,
  //                     }
  //                 );
  //               }
  //             }
  //           } else if (snapshot.hasError) {
  //             return Center(
  //               child: Text('${snapshot.error}'),
  //             );
  //           }
  //         }
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return const Center(
  //             child: CircularProgressIndicator(),
  //           );
  //         }
  //         return LoginPage();
  //       }
  //   );
  // }
  //
  //





  function(String ProductName, Uint8List file, String Price, String ProductDescription) async {
    String ImageUrl = await Database(FirebaseFirestore.instance, context).ConvertToStringAndDeployToStorage(ProductName, file);

    await Database(FirebaseFirestore.instance, context).AddMushroomToCloudFireStore(ImageUrl, ProductName, Price, ProductDescription);

    ProductNameController.text = "";
    PriceController.text = "";
    ProductDescriptionController.text = "";
    _profilePics = null;
  }

  Uint8List? _profilePics;
  TextEditingController ProductNameController = TextEditingController();
  TextEditingController PriceController = TextEditingController();
  TextEditingController ProductDescriptionController = TextEditingController();

  Future selectProfileImage() async {
    return showDialog(context: context, builder: (context){
      return SimpleDialog(
        title: const Text("Add a profile photo of your Product"),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text("Take a photo"),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List file = await Database(FirebaseFirestore.instance, context).pickImage(ImageSource.camera);
              setState(() {
                _profilePics = file;
              });
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text("Choose from gallery"),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List file = await Database(FirebaseFirestore.instance, context).pickImage(ImageSource.gallery,);
              setState(() {
                _profilePics = file;
              });
            },
          ),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: <Widget>[
                _profilePics != null
                    ?
                Container(
                  width: MediaQuery.of(context).size.width,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: new MemoryImage(
                                _profilePics!
                            ),
                        ),
                    ),
                )
                :
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: new DecorationImage(
                            fit: BoxFit.contain,
                            image: new NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa0qEV_mEF19gs68CDaSmZ4e0kssbxyOAMbw&usqp=CAU")))),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: IconButton(
                    onPressed: (){
                      selectProfileImage();
                    },
                    icon: Icon(
                      Icons.add_a_photo,
                      //  color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              child: TextField(
                controller: ProductNameController,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.fastfood, color: Colors.green,),
                  labelText: "Mushroom Name:",
                  hintText: "Italian Mushroom",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              child: TextField(
                controller: PriceController,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.price_change, color: Colors.green,),
                  labelText: "Mushroom Price:",
                  hintText: "Mushroom Price",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              child: TextField(
                controller: ProductDescriptionController,
                maxLines: 8,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: "Mushroom Description:",
                  hintText: "Mushroom Description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            ),
            Container(margin: EdgeInsets.symmetric(horizontal: 28.0),child: MaterialButton(onPressed: (){function(ProductNameController.text, _profilePics!, PriceController.text, ProductDescriptionController.text);},color: Colors.green ,child: Text("Add to store"), height: 45.0,))
          ],
        ),
      ),
    );
  }
}
