import 'package:flutter/material.dart';

class usepin extends StatelessWidget {
  const usepin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pinapp();
  }
}

class pinapp extends StatelessWidget {
  const pinapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Center(
              child: Image.asset('images/logo.jpg',width: 200.0,height: 200.0,),
            )

          ],
        ),
      ),
    );
  }
}


