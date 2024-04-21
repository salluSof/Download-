
import 'package:demo/downloader.dart';
import 'package:flutter/material.dart';

class PasteLink extends StatefulWidget {
  const PasteLink({super.key});
  @override
  State<PasteLink> createState() => _PasteLinkState();
}
class _PasteLinkState extends State<PasteLink> {
  TextEditingController textController = TextEditingController();
  //


  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(

  padding: const  EdgeInsets.all(20) ,

  child:  Column (
    children: [

      //  Text Form field  pasting the link
      TextFormField(
        controller:  textController,
        decoration:

          InputDecoration ( labelText:  " Pest  youtube video link")   ,

      ),



      GestureDetector(

        onTap:  ()  {
if (  textController.text.isEmpty){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No link pastes  ")  ));
      //  20 minit
}

else {
  //  Downlode the video
// Download ().downloadVideo(textController.text.trim() , " youtube Downloader "  );


}
        },


        child:  Container   (
          alignment:  Alignment.center,
margin: const   EdgeInsets.only(top:20)    ,
          color: Colors.grey ,
          padding: const  EdgeInsets.all(20)  ,
          width:  MediaQuery.of(context).size.width,

          child:  Text  ( "  Downlode  Video "  ,
          style:  TextStyle( color:  Colors.blue, fontSize: 20)   ,


          ),
        ),
      )


    ],


  ) ,
) ,

    )  ;
  }
}

