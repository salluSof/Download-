
import 'package:demo/browser_page.dart';
import 'package:demo/paste_link.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex =0 ;
  @override
  Widget build(BuildContext context) {

    return Scaffold    (
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber ,
        title: Text   (" Youtube  downloder ") ,



      ),


body: pages [ currentIndex]  ,


 bottomNavigationBar:  BottomNavigationBar  (
currentIndex: currentIndex ,
   selectedItemColor: Colors.red,
   items: items,
onTap: (value) {
  setState(() {
    currentIndex= value ;

  });
},

 )  ,



    );




  }

List<Widget>pages = [
  PasteLink(),
  BrowserPase(),
];


  List<BottomNavigationBarItem>  items =[

    BottomNavigationBarItem(icon: Icon (Icons.paste), label:  " paste link  "   ),

    BottomNavigationBarItem(icon: Icon (Icons.network_cell), label:  " Browser  "   ),

  ];



 }
