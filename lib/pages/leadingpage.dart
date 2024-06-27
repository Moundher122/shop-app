// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class leadingpage extends StatelessWidget {
  const leadingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body:Column( 
          children: [
            Padding(
              padding: const EdgeInsets.only(left:100,right: 100,top: 150),
              child: Image.asset('images/nike.png',
              width: 280,
              height: 280,),
            ),
            Text("JUST DO IT",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Supreme',
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18,right: 10,top: 20,bottom: 40),
              child: Text("Explore Nike's Digital Store for cutting-edge gear and elevate your performance to new heights.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 34, 40, 49),
                fontSize:15,
                fontWeight: FontWeight.w300,
              ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              
              child: ElevatedButton(onPressed:() {
                Navigator.pushNamed(context,'shopingpage');
              },
              style: ButtonStyle(
                elevation:MaterialStatePropertyAll(0),
                backgroundColor:MaterialStatePropertyAll(Color.fromARGB(255, 34, 40, 49)),
                
              ),
              child: Text('SHOP NOW',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'supreme',
              ),
              
              )
              ),
            )
          ],
        )
        );
  }
}