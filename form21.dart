import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';



//canLaunchUrlString,LaunchUrlString

class forma21 extends StatelessWidget
{
  final u='https://www.youtube.com/';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
    appBar: AppBar(),
    body: Center(
      
     child: ElevatedButton(
        onPressed:()async{
          
          try
          {
            await canLaunchUrlString(u)?await launchUrlString(u,webViewConfiguration: WebViewConfiguration(enableJavaScript: true),mode: LaunchMode.inAppWebView):throw('error');
          }
          catch(_)
          {
            print('error');
            
          }
          
        } ,
        child: Text('click'),
      )
    ),

    );
  }

}