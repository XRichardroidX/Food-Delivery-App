import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shop/products/mushroom_details.dart';
import '../shop/products/pizza_details.dart';
import '../shop/products/salad_details.dart';

class ProductDetails{

  ShowFullContent(String Id, String ProductCategory, BuildContext context){
    if(ProductCategory == "Salad"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SaladDetails(Id: Id,)));
    }
    if(ProductCategory == "Pizza"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaDetails(Id: Id,)));
    }
    if(ProductCategory == "Mushroom"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MushroomDetails(Id: Id,)));
    }
  }

}