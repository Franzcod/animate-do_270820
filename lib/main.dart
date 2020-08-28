import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: BounceInDown(
            child:  Container(
            
            padding: const EdgeInsets.all(0.0),
            color: Colors.cyan[100],
            
            width: 280.0,
            height: 280.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height:20),
                  Text(
                    'Floatin Action Boton con animacion', 
                    style: TextStyle(color: Colors.blue, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 25,), 
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:20),
                  Text(
                    'Package: Animate-do',
                    style: TextStyle(color: Colors.black, 
                    fontWeight: FontWeight.normal, 
                    fontSize: 19,), 
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:20),
                  Wrap(
                    children: <Widget>[
                      Chip(
                        avatar: CircleAvatar(backgroundColor: Colors.orange, child: Text('C', style: TextStyle(color: Colors.white))),
                        label: Text('Franzcod'),
                        backgroundColor: Colors.white,
                      )
                    ]
                  )
                ]
              ),
            ),
          ),
          )
        ),
        floatingActionButton: FloatingBoton(),
      ),
    );
  }
}




class FloatingBoton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BounceInLeft(
      child: FloatingActionButton(onPressed: (){
      },
        child: Icon(Icons.arrow_forward_ios),
      ),
      duration: Duration(seconds: 3),
    );
  }
}