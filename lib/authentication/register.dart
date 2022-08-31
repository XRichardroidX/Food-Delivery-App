import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_store/admin/backend/auth.dart';
import 'package:food_store/authentication/login.dart';
import 'package:google_fonts/google_fonts.dart';

import '../users/screens/profile/orders.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
bool SeePassword = true;
var PasswordIcon = Icons.remove_red_eye;
  TextEditingController NameController = TextEditingController();
  TextEditingController GmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();

  getUsersDetails(){
    AuthClass(auth: FirebaseAuth.instance).register(Name: NameController.text.trim(), Email: GmailController.text.trim(), Password: PasswordController.text.trim(), PhoneNumber: PhoneNumberController.text.trim(), context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
       physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
       children: [
         Container(
           padding: EdgeInsets.all(18.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 child: Text("Devigma Foods",style: GoogleFonts.lobster(fontSize: 35.0),),
               ),
               SizedBox(height: 50,),
               TextField(
                 controller: NameController,
                 cursorColor: Colors.green,
                 decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.person, color: Colors.green,),
                   labelText: "Names:",
                   hintText: "First Name:      Last Name.",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(0.0)
                   ),

                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.green)
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               TextField(
                 controller: GmailController,
                 cursorColor: Colors.green,
                 decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.mail, color: Colors.green,),
                   labelText: "Gmail:",
                   hintText: "example@gmail.com",
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(0.0)
                   ),

                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.green)
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               TextField(
                 controller: PasswordController,
                 obscureText: SeePassword,
                 cursorColor: Colors.green,
                 decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.password, color: Colors.green,),
                   suffixIcon: IconButton(onPressed: (){
                     if(SeePassword == true){
                       setState(() {
                         SeePassword = false;
                         PasswordIcon = Icons.cancel;
                       });
                     }
                     else{
                       setState(() {
                         SeePassword = true;
                         PasswordIcon = Icons.remove_red_eye;
                       });
                     }
                   }, icon: Icon(PasswordIcon, color: Colors.green,),),
                   labelText: "Password:",
                   hintText: "******",
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(0.0)
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.green)
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               TextField(
                 controller: PhoneNumberController,
                 cursorColor: Colors.green,
                 decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.phone, color: Colors.green,),
                   labelText: "Phone Number:",
                   hintText: "(Optional)",
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(0.0)
                   ),

                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.green)
                   ),
                 ),
               ),
               SizedBox(height: 50,),
               MaterialButton(
                 height: 45.0,
                 minWidth: 200.0,
                 color: Colors.green,
                 onPressed: () async {
                   await getUsersDetails();
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OpenOrders()));
                 },
                 child: Text("Register"),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(0.0),
                   side: BorderSide(color: Colors.blue,),
                 ),
               ),
               SizedBox(height: 70,),
               InkWell(child: Container(
                 padding: EdgeInsets.all(10.0),
                 child: Text("Already have an account? Login here.", style: TextStyle(color: Colors.blue,),),), onTap: (){Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(builder: (context) => const LoginPage(),),
               );},)
             ],
           ),
         ),
       ],
     ),
    );
  }
}
