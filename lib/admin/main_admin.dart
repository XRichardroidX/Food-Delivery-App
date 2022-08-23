import 'package:flutter/material.dart';
import 'package:food_store/admin/admin_screens/Admin_Orders.dart';
import 'package:food_store/admin/admin_screens/food_store.dart';
import 'package:google_fonts/google_fonts.dart';
import 'admin_screens/admin_help/admin_help.dart';

class MainAdmins extends StatefulWidget {
  const MainAdmins({Key? key}) : super(key: key);

  @override
  State<MainAdmins> createState() => _MainAdminsState();
}

class _MainAdminsState extends State<MainAdmins> {
  final Screens = [
    FoodStore(),
    AdminOpenOrders(),
    Complaints(),
  ];

  int page = 1;
  void button (int index){
    setState(() {
      page = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Devigma's Admin Panel", style: GoogleFonts.nunito(fontWeight: FontWeight.bold),)),
        elevation: 0.0,
      ),
      body: Screens[page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        onTap: button,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_sharp,), label: 'Food Store',),
          BottomNavigationBarItem(icon: Icon(Icons.reorder,), label: 'Orders',),
          BottomNavigationBarItem(icon: Icon(Icons.help,), label: 'Complaints',)
        ],
      ),
    );
  }
}