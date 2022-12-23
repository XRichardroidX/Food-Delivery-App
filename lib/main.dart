import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_store/authentication/register.dart';
import 'package:food_store/users/main_users.dart';
import 'package:food_store/users/screens/profile/user_profile.dart';
import 'admin/main_admin.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
    runApp(
            MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: MyApp(),
              theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.green)),
    )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.active){
        if(snapshot.hasData){
          return MainUsers();
        }
        else if(snapshot.hasError){
          return Center(child: Text("${snapshot.error}"),);
        }
      }
      if (snapshot.connectionState == ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }

      return Center(child: ElevatedButton(
        onPressed: (){
          FirebaseAuth.instance.signInAnonymously();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainUsers()),
          );
        },
        child: Icon(Icons.ac_unit),),
      );

    });
  }
}
