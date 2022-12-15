import 'package:flutter/material.dart';
import 'package:provi_checkbox/home.dart';
import 'package:provi_checkbox/provider/chech_prov.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Check(),
    );*/
        ChangeNotifierProvider(
      create: (context) => Checkprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Check(),
      ),
    );
  }
}
