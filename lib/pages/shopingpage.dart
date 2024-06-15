// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/marketpage.dart';

import '../components/navbar.dart';
import 'shoppage.dart';

class shopingpage extends StatefulWidget {
  
  const shopingpage({super.key});
  

  @override
  State<shopingpage> createState() => _shopingpageState();
}
class shoes{
  String? name;
  String? description;
  String? image;
  String? price;
  shoes(this.name,this.price,this.image,this.description);
}
List<shoes> shoess=[shoes('Nike air force','100','images/force.png',"Nike's lifestyle shoes: premium materials, stylish comfort, perfect for everyday wear"),shoes('Nike air jordan 1', '200', 'images/jordan1.png', "Nike's running shoes: ultimate comfort, advanced cushioning, smooth stride"),shoes('Nike duck Sb', '150','images/airjordan.png' , "Nike's basketball shoes: superior traction, ankle support, peak performance")];
List<shoes> item=[];


class _shopingpageState extends State<shopingpage> {
  int selectedindex=0;
  void change(int index ){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    void additem(int p){
      setState(() {
        item.add(shoess[p]);
      });
    }
    int index=0;
    final List<Widget> widgetList = [shoppage(shoe: shoess, item: item),marketpage(item:item,)];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      bottomNavigationBar: navbar(
        onTabChange: (p0) {
          change(p0);
        },
      ),
      body:widgetList[selectedindex] ,
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Builder(
            builder:(context) =>  IconButton(
              onPressed:() {
                Scaffold.of(context).openDrawer();
                
              },
             icon: Icon(Icons.menu,
             color: Colors.black,)),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
                Container(
              height: 150,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Image.asset('images/nike.png',
              width: 200,
              height: 50,),
            ),
            ListTile(
              
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text('Home',
              style: TextStyle(
                color: Colors.black,
              ),),
            ),
            ListTile(
              leading: Icon(Icons.info,color:Colors.black),
              title: Text('About',
              style: TextStyle(
                color:Colors.black,
              ),),
            ),
            ],

          ),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context,'leadingpage');
                },
                child: ListTile(
                  leading: Icon(Icons.exit_to_app_rounded,color: Colors.black,),
                  title: Text('Log out',
                  style: TextStyle(
                    color:Colors.black,
                  ),),
                ),
              ),
            ),
            
            
          ],
        ),
        
      ),
    );
  }
}