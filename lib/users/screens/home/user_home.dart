import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {

  String? ShoppingBannerX;

  var TextColor = Colors.white;
  var ActiveColor = Colors.green;
  var BackgroundColor = Colors.black;
  String ClickedProductA = "";
  String ClickedProductB = "";
  String ClickedProductC = "";
  String ClickedProductD = "";
  String ClickedProductE = "";

  var a, b, c, d, e, f, g, h, i, j, k, l;

@override
  void initState() {
    // TODO: implement initState
   a = BackgroundColor;
   b = BackgroundColor;
   c = BackgroundColor;
   d = BackgroundColor;
   e = BackgroundColor;
   f = BackgroundColor;
   g = BackgroundColor;
   h = BackgroundColor;
   i = BackgroundColor;
   j = BackgroundColor;
   k = BackgroundColor;
   l = BackgroundColor;
    super.initState();
  }

 var Click = 'a';

  void Clicked(String isClicked){
    Click = isClicked;
    if(isClicked == "a"){
      setState((){
        a = ActiveColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
        ClickedProductA = "Salad";
        ClickedProductB = "";
        ClickedProductC = "";
        ClickedProductD = "";
        ClickedProductE = "";

      });
    }
    if(isClicked == "b"){
      setState((){
        a = BackgroundColor;
        b = ActiveColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
        ClickedProductA = "";
        ClickedProductB = "Pizza";
        ClickedProductC = "";
        ClickedProductD = "";
        ClickedProductE = "";
      });
    }
    if(isClicked == "c"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = ActiveColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
        ClickedProductA = "";
        ClickedProductB = "";
        ClickedProductC = "Mushroom";
        ClickedProductD = "";
        ClickedProductE = "";
      });
    }
    if(isClicked == "d"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = ActiveColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
        ClickedProductA = "";
        ClickedProductB = "";
        ClickedProductC = "";
        ClickedProductD = "Beef Suya";
        ClickedProductE = "";
      });
    }
    if(isClicked == "e"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = ActiveColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
        ClickedProductA = "";
        ClickedProductB = "";
        ClickedProductC = "";
        ClickedProductD = "";
        ClickedProductE = "Snail";
      });
    }
    if(isClicked == "f"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = ActiveColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
      });
    }
    if(isClicked == "g"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = ActiveColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
      });
    }
    if(isClicked == "h"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = ActiveColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
      });
    }
    if(isClicked == "i"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = ActiveColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = BackgroundColor;
      });
    }
    if(isClicked == "j"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = ActiveColor;
        k = BackgroundColor;
        l = BackgroundColor;
      });
    }
    if(isClicked == "k"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = ActiveColor;
        l = BackgroundColor;
      });
    }
    if(isClicked == "l"){
      setState((){
        a = BackgroundColor;
        b = BackgroundColor;
        c = BackgroundColor;
        d = BackgroundColor;
        e = BackgroundColor;
        f = BackgroundColor;
        g = BackgroundColor;
        h = BackgroundColor;
        i = BackgroundColor;
        j = BackgroundColor;
        k = BackgroundColor;
        l = ActiveColor;
      });
    }
  }


  var shadowColor = Colors.green;

  display(){
    if(Click == 'a'){
      return Container(
        padding: EdgeInsets.fromLTRB(10.0, 210.0, 10.0, 0.0),
        child: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/salad.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
    ),
      );
    }
    if(Click == 'b' || Click == 'd' || Click == 'e' || Click == 'f' || Click == 'g' || Click == 'h' || Click == 'i' || Click == 'j' || Click == 'k' || Click == 'l'){
      return Container(
        padding: EdgeInsets.fromLTRB(10.0, 210.0, 10.0, 0.0),
        child: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Text(''), flex: 2,),
                    Card(
                      elevation: 10,
                      shadowColor: shadowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: a,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Pizza",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }
    if(Click == 'c'){
      return Container(
       padding: EdgeInsets.fromLTRB(10.0, 210.0, 10.0, 0.0),
        child: GridView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 16),
          children: [
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 105,
                height: 105,
                padding: EdgeInsets.all(0.0),
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/pizza.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      "Pizza",
                      style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 550),
          child: ImageSlideshow(
            width: MediaQuery.of(context).size.width,
           // height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                "images/shopping_banner.png",
              ),
              Image.asset(
                "images/banner2.png",
              ),
              Image.asset(
                "images/banner3.png",
              ),
            ],
           ),
          ),
          Container(width: MediaQuery.of(context).size.width,margin: EdgeInsets.symmetric(vertical: 90.0),padding: EdgeInsets.all(2.0),child: Text("All Categories", style: GoogleFonts.nanumGothic(fontSize: 12, color: Colors.white),), decoration: BoxDecoration(borderRadius: BorderRadius.circular(0.0), color: Colors.black,),),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 97.0, 0.0, 435.0),
            child: ListView(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: (){
                    Clicked("a");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(ClickedProductA),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/salad.png"),
                          radius: 27.5,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: a,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Salad",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Clicked("b");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(ClickedProductB),
                      CircleAvatar(
                        backgroundImage: AssetImage("images/pizza.jpg"),
                        radius: 27.5,
                      ),
                        SizedBox(height: 5.0),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: b,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                              "Pizza",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                     ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Clicked("c");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(ClickedProductC),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/mushroom.png"),
                          radius: 27.5,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: c,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Mushroom",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Clicked("d");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(ClickedProductD),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/suya.jpg"),
                          radius: 27.5,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: d,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Beef Suya",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Clicked("e");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(ClickedProductE),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/snail.png"),
                          radius: 27.5,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: e,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Snail",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          display(),
        ],
      ),
    );
  }
}