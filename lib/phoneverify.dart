import 'package:anyytime_1/usepin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:intl_phone_field/intl_phone_field.dart';


class phoneverify extends StatelessWidget {
 // const PhoneVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:true,
      backgroundColor: Colors.black,
      body: Samp(),
    );
  }
}


class Samp extends StatelessWidget {
  const Samp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(child:SafeArea(child: Column(
      children: [
        SizedBox(height: 90.0),
        Center(
          child:Image.asset('images/logo.jpg',width: 200.0,height: 200.0,),

        ),
        SizedBox(height: 80.0,),
        Container(child: Align(
          alignment: Alignment.center,
          child: Text('Enter your Mobile number',style: TextStyle(color: Colors.white),),
        ),),


        SizedBox(height: 10.0,),
      Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/INDIA.png',height: 25.0,width:25.0),
              SizedBox(width: 8),
              Text('+91',style: TextStyle(color: Colors.white, fontSize: 20.0,decoration: TextDecoration.underline,decorationColor: Colors.white),)
            ],
          ),
        ),
      ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width/1.5,

              child:
             TextField(

               keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.white,letterSpacing: 2),
              decoration: InputDecoration(

                suffix: InkWell(
                  onTap: ()=>{
                    print("get otp")
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10)),

                    ),
                    child: Text("Get OTP",style: TextStyle(color:Colors.white,fontSize: 15),),
                  ),
                ),

                  hintStyle: TextStyle(color: Colors.white54,fontSize: 20,letterSpacing: 2),
                  hintText: "123456789",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 0.5,),
              ),

                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 1.0,),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70, width: 0.5,),
                ),
                ),
              ),
            ),


            Container(
              padding:EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width/2.5,
              child: TextField(
                obscureText: true,

                keyboardType:TextInputType.phone,
                style: TextStyle(color: Colors.white,letterSpacing: 8),
                decoration: InputDecoration(
                 // labelText: '',
                  hintStyle: TextStyle(color: Colors.white54,fontSize: 20,letterSpacing: 4),
                  hintText: "* * * * * *",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 0.5,),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 1.0,),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 0.5,),
                  ),
                ),

                ),
            ),



],
             ),

Container(
    child:Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            child: Text('USE PIN',style: TextStyle(color: Colors.orange),),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>usepin()));
            }
        ),
        SizedBox(width: 55,)
      ],
    ),
),
        Container(
          margin: EdgeInsets.all(30),
          child: FlatButton(
            child: Text('Log In', style: TextStyle(fontSize: 20.0,color: Colors.black),),
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

      ],


    )
    )
    );
  }
}
