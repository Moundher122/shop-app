// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/shopingpage.dart';
class itempage extends StatelessWidget {
  final shoes shoe;
  Function()? onTap;
   itempage({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin:EdgeInsets.all(10) ,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(37, 0, 0, 0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(shoe.image!),
                Padding(
                  padding:EdgeInsets.only(left: 10,top:10),
                  child: Text(shoe.name!,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0,top: 10),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 30,
                  height:30 ,
                  child: Icon(Icons.delete),
                ),
              ),
            )
            
            
          ],
        ),
        
      ),
    );
  }
}