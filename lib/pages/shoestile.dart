// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
class shoestile extends StatelessWidget {
  final shoes;
  Function()? onPressed;
   shoestile({super.key,required this.shoes,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(left:20,bottom: 50,right: 20),
      width: 350,
      
       decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
       ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(shoes.image,
          width: 300,
          height: 300,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only (left:8.0),
                child: Text(shoes.name,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Supreme'
                ),),
              ),
              Padding(
                padding:EdgeInsets.only(right: 20),
                child: Text(shoes.price+'\$',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Supreme'
                ),
                ),
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(shoes.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                        elevation:MaterialStatePropertyAll(0),
                      ),
                      child: Text('Buy',
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),) ),
                  ),
                ),
              ],
            ),
          ),       
        ],
       ),
    );
   
  }
}