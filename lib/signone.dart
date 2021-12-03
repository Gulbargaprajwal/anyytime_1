import 'package:anyytime_1/phoneverify.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'phoneverify.dart';

class Signone extends StatelessWidget {
  const Signone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PreSign(),
    ) ;
  }
}

class PreSign extends StatelessWidget {
  const PreSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 90.0),
          Center(
            child:Image.asset('images/logo.jpg',width: 200.0,height: 200.0,),

          ),
          SizedBox(height: 100.0),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'SPENDING',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),

          Container(
            child:  Center(
      child: RichText(
      text: TextSpan(
      text: 'IS ', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold,
        letterSpacing: 2,),

      children: <TextSpan>[
      TextSpan(text: 'NOW', style: TextStyle(color: Colors.orange, fontSize: 22, fontWeight: FontWeight.bold,
        letterSpacing: 2,)
      )
      ]

          ),
      ),
      ),
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'INVERSTING',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.all(30),
            child: FlatButton(
              child: Text('Sign Up', style: TextStyle(fontSize: 20.0,color: Colors.black),),
              color: Colors.white,
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              onPressed: () {
                print('tap1');
                //TODO add navigation ot next page
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>phoneverify()));
              },
            ),
          ),

          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

               Text('Already have an account?',style: TextStyle(color: Colors.white,fontSize: 12),),
                 TextButton(
                      child: Text('Login.',style: TextStyle(color: Colors.orange),),
                      onPressed: () {
                       print('tap2');
                      }
                  ),

              ],
            ),

          ),






        ],
      ),
    );
  }
}

