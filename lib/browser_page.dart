import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowserPase extends StatefulWidget {
  const BrowserPase({super.key});

  @override
  State<BrowserPase> createState() => _BrowserPaseState();
}

class _BrowserPaseState extends State<BrowserPase> {
  late   WebViewController controller  = WebViewController();

  @override
  void initState() {
    super.initState();
    controller   = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)

      ..loadRequest(Uri.parse('https://www.youtube.com/'));

  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if ( await controller!.canGoBack()) {
             controller!.goBack();
        }
        return false ;
      },
      child: Scaffold(
        body: WebViewWidget(controller: controller),
      floatingActionButton: FloatingActionButton (
        backgroundColor: Colors.red,
        onPressed: () {
          print( controller!.currentUrl());
        },
        child: Icon ( Icons.download) ,
      ) ,

      ),
    );
  }
}
