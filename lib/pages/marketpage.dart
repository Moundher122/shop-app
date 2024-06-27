// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/class.dart';
import 'package:flutter_application_1/pages/shopingpage.dart';
import 'package:provider/provider.dart';

import '../components/item.dart';
class marketpage extends StatefulWidget {
  marketpage({super.key});

  @override
  State<marketpage> createState() => _marketpageState();
}
class _marketpageState extends State<marketpage> {
  @override
  Widget build(BuildContext context) {
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
              itemCount: context.watch<listshoes>().items.length,
              itemBuilder:(context, index) {
                return itempage(shoe:context.watch<listshoes>().items[index],onTap: () {
                  context.read<listshoes>().suppitem(index);
                },);
              },),
          ),
        ],
      ),
    );
  }
}