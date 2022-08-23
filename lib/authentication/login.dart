import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_store/authentication/register.dart';
import 'package:google_fonts/google_fonts.dart';
import '../admin/backend/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool SeePassword = true;
  var PasswordIcon = Icons.remove_red_eye;
  TextEditingController GmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController resetPasswordEmailController = TextEditingController();

  getUsersDetails(){
    AuthClass(auth: FirebaseAuth.instance).login(Email: GmailController.text.trim(), Password: PasswordController.text.trim(), context: context);
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
                GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context, builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "This will reset your Mechatronics account password",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        content: TextField(
                          controller: resetPasswordEmailController,
                          autofocus: true,
                          decoration: InputDecoration(hintText: "Enter your Email address"),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () async {
                                AuthClass(auth: FirebaseAuth.instance).resetPassword(context: context, Email: resetPasswordEmailController.text.trim());
                                Navigator.of(context).pop();
                                resetPasswordEmailController.text = "";
                              },
                              child: Text('RESET PASSWORD')
                          ),
                        ],
                      );
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                MaterialButton(
                  height: 45.0,
                  minWidth: 200.0,
                  color: Colors.green,
                  onPressed: (){
                    getUsersDetails();
                  },
                  child: Text("Login"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(color: Colors.blue,),
                  ),
                ),
                SizedBox(height: 70,),
                InkWell(child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Don't have an account? Register now.", style: TextStyle(color: Colors.blue,),),), onTap: (){Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );},),
                SizedBox(height: 50.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Click here to ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      onTap: (){
                        AuthClass(auth: FirebaseAuth.instance)
                            .sendEmailVerificationMessage(context);
                      },
                      child: Text(
                        "verify your account",
                        style: TextStyle(color: Colors.lightGreen),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
