import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth > 800) return AboutDesktop();
        return AboutMobile();
      },),
    );
  }
}

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
        Expanded(child: AvatarArea()),
        Expanded(child: InfoArea())
      ],),
    );
  }
}

class InfoArea extends StatelessWidget {
  const InfoArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Text("About me"),
              Text("Work"),
              Text("Contact")
            ],),
          ),

          Expanded(child: Center(child: Container(width: 300, child: Text("Hello world"),)),)
      ],
    );
  }
}

class AvatarArea extends StatelessWidget {
  const AvatarArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage("https://pp.userapi.com/c636819/v636819948/7eadb/d_yEq-3Mzcs.jpg"),
            fit: BoxFit.cover
            )
          ),
        ),
        Text("Arseniy Zaporozhets", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
        Text("Programmer", style: TextStyle(fontStyle: FontStyle.italic),)
      ],);
  }
}

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(flex: 2, child: AvatarArea()),
        Expanded(flex: 1, child: InfoArea()),
      ],),
    );
  }
}