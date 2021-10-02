import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends ConsumerWidget {
  

  @override
  Widget build(BuildContext context,watch) {
    final data= wath()
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello '),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){

                },
                child: Text('Increment'),
                ),

                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: (){

                },
                child: Text('Decrement'),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}