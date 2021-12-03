import 'package:flutter/material.dart';

import 'package:anyytime_1/widget/button_widget.dart';
import 'package:anyytime_1/page/Home_page.dart';
import 'package:anyytime_1/page/onboarding_page.dart';

import 'main.dart';

class Splash extends StatefulWidget {


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(seconds:3),(){});
    //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHomePage(title: 'MyApp',)) );
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> isviewed != 0 ? OnBoardingPage() : Home(),) );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Expanded(

              child:
                Image.asset('images/logo.jpg',width: 200,height: 100,),
         // width: 400.0,
         // height: 140.0,
              flex: 5,


            ),
            Container(
              child: Text('From',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white)),

            ),

            Container(
              child: Text('Anyytime co.',style:TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.orange)),

            ),

          ],
        ),
      ),
    );
  }
}
