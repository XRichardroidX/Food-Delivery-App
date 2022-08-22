import 'package:flutter/material.dart';
import 'package:food_store/users/screens/shop/products/mushroom.dart';
import 'package:food_store/users/screens/shop/products/pizza.dart';
import 'package:food_store/users/screens/shop/products/salad.dart';
import 'package:google_fonts/google_fonts.dart';

class MainStore extends StatefulWidget {
  const MainStore({Key? key}) : super(key: key);

  @override
  State<MainStore> createState() => _MainStoreState();
}

class _MainStoreState extends State<MainStore> {

  var BgColor = Colors.black;
  var TextColor = Colors.white;
  var shadowColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Mushroom(),),
                        );
                      },
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/mushroom.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: BgColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Mushroom",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
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
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Pizza(),),
                        );
                      },
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
                              color: BgColor,
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
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Salad(),),
                        );
                      },
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
                              color: BgColor,
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
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/ice_cream.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Ice Cream",
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/snail.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Snails",
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/suya.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Beef Suya",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/cake.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Cake",
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/chicken.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Chicken",
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/shawama.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Shawama",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/sandwich.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Sandwich",
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/soup.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Soups",
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
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/cookies.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 70.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Cookies & \n Buscuits",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
