import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../users/backend/database.dart';

class AddSalad extends StatefulWidget {
  const AddSalad({Key? key}) : super(key: key);

  @override
  State<AddSalad> createState() => _AddSaladState();
}

class _AddSaladState extends State<AddSalad> {

  function(String ProductName, Uint8List file, String Price, String ProductDescription) async {
    String ImageUrl = await Database(FirebaseFirestore.instance, context).ConvertToStringAndDeployToStorage(ProductName, file);

    await Database(FirebaseFirestore.instance, context).AddSaladToCloudFireStore(ImageUrl, ProductName, Price, ProductDescription);

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
                  labelText: "Salad Name:",
                  hintText: "Italian Salad",
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
                  labelText: "Salad Price:",
                  hintText: "Salad Price",
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
                  labelText: "Salad Description:",
                  hintText: "Salad Description",
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
