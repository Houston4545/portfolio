import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(children:<Widget>[
    Expanded(child: Gravatar()),
    Expanded(child: Body()),
      ],),
    );
  }
}

class Gravatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage("https://news.gismeteo.ru/images/news/2018/12/8a5f8454.jpg"),
                radius: 100,
              ),
              Text('Arseniy', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)
              )],
      ));
          
      
    
  }
}
class Body extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
     body: Row(
       mainAxisAlignment: MainAxisAlignment.end, 
     children: <Widget> [ 
    Text('About me'),
    Spacer(),    
    Text('Work'),
    Spacer(),
    Text('Contact')
    ],),
    );     
       
  }
}

