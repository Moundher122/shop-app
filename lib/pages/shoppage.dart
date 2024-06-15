// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/shopingpage.dart';

import 'shoestile.dart';


class shoppage extends StatefulWidget {
   List<shoes>shoe;
   List<shoes>item;
   shoppage({super.key,required this.shoe,required this.item});
  @override
  State<shoppage> createState() => _shoppageState();
}
final _SnackBar=SnackBar(content: Text('item add succsefly',
style: TextStyle(
  color: Colors.green[300]
),));
class _shoppageState extends State<shoppage> {
  @override
  Widget build(BuildContext context) {
    
    void additem(int index){
      setState(() {
        item.add(widget.shoe[index]);
      });
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              height: 60,
             decoration: BoxDecoration(
               color: Colors.transparent,
               borderRadius: BorderRadius.circular(20),
               border: Border.all(color: Colors.black)
             ),
             child: Padding(
               padding: const EdgeInsets.only(left:8.0,right: 8),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text('Search..'),
                   Icon(Icons.search)
                ],
               ),
             ),
            ),
          ),
          
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Newer',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'supreme ',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    Row(
                      children: [
                        Text('see all',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),),
                        Icon(Icons.navigate_next,
                        color: Colors.blue,),
                      ],
                    ),
                  ],
                
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.shoe.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) {
                return shoestile(
                  shoes: shoes(widget.shoe[index].name,widget.shoe[index].price,widget.shoe[index].image,widget.shoe[index].description,),
                  onPressed:() {
                    additem(index);
                    ScaffoldMessenger.of(context).showSnackBar(_SnackBar);
                   
                  },
                );
              },
              ),
          ),
        ],
      ),
    );
  }
}