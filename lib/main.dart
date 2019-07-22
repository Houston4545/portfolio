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


class InfoArea extends StatefulWidget {
  const InfoArea({
    Key key,
  }) : super(key: key);

  @override
  _InfoAreaState createState() => _InfoAreaState();
}

class _InfoAreaState extends State<InfoArea> {
Widget body=AboutPage();
  onBtm1Press(){
    setState(() {
    body=AboutPage();   
    });

  }
  onBtm2Press(){
    setState(() {
     body=WorkPage(); 
    });
  }
  onBtm3Press(){
    setState(() {
     body=ContPage(); 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              FlatButton(child: Text("About me"),onPressed: onBtm1Press,),
              FlatButton(child: Text("Work"),onPressed: onBtm2Press,),
              FlatButton(child: Text("Contact"),onPressed: onBtm3Press,)
            ],),
          ),

           Expanded(child: body,)
      ],
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(width: 300, child: Text("Приветствую, меня зовут Арсений запорожец мне 16 лет и я ученик 10 физ. математического класса гимназии №1 им. А.А. Иноземцева"),));
  }
}

class WorkPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(width: 300, child: Text("Пусто"),));
  }
}

class ContPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(width: 300, child: Text("Телефон: +7**********, E-mail: **********@yandex.com"),));
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