// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/shopingpage.dart';

import '../components/item.dart';
class marketpage extends StatefulWidget {
  List<shoes> item;
  marketpage({super.key,required this.item});

  @override
  State<marketpage> createState() => _marketpageState();
}
class _marketpageState extends State<marketpage> {
  @override
  Widget build(BuildContext context) {
    void suppitem(int index){
      setState(() {
        item.removeAt(index);
      });
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body: Column(
        children: [
          Text('My card',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          Expanded(
            child: ListView.builder(
              itemCount: item.length,
              itemBuilder:(context, index) {
                return itempage(shoe: item[index],onTap: () {
                  suppitem(index);
                },);
              },),
          ),
        ],
      ),
    );
  }
}