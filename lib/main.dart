// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/class.dart';
import 'package:provider/provider.dart';

import 'pages/leadingpage.dart';
import 'pages/shopingpage.dart';
void main() {
  runApp(myapp());
  
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => listshoes(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:leadingpage(),
        routes: {
          'shopingpage':(context) => shopingpage(),
          'leadingpage':(context) => leadingpage(),
        },
      ),
    );
  }
}