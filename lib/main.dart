import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:social_share/pages/home.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized(); //The reason behind this is I am waiting for some data or running an async function inside main().
  
  Firestore.instance.settings().then((_) {
    print("Timestamps enabled in snapshots\n");
  }, onError: (_) {
    print("there was an error enabling timestams in snapshots");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocialShare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.teal,
      ),
      home: Home(),
    );
  }
}
