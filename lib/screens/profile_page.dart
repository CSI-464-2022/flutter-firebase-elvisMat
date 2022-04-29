import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csi464/models/covid_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final CollectionReference users = FirebaseFirestore.instance.collection('users');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getCurrentUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data.toString());
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
//TODO: For future use
 Future<CovidUser> getProfileInfo() async{
    return await users.doc(_auth.currentUser!.uid)
        .withConverter<CovidUser>(fromFirestore: (snapshots, _) => CovidUser.fromJson(snapshots.data()!),
      toFirestore: (covidUser, _) => covidUser.toJson(),).get().then((value){
      return CovidUser.fromJson(value.data()!.toJson());
    });
  }

 Future<String?> getCurrentUser() async{
   var currentUser = FirebaseAuth.instance.currentUser;
return currentUser!.email;
  }
}



