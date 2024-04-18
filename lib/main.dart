import 'package:flutter/material.dart';
import 'package:flutterradiolsttile/myradiolistxample.dart';



void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepg() ,
    );
  }
}
class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
String? _quali='SSLC';
TextEditingController txtname=new TextEditingController();
TextEditingController txtoutput=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(children: [Row(children: [Expanded(child:  TextField(controller: txtname, decoration: InputDecoration(hintText: "enter name")))],),
      Row(children: [Expanded(child: RadioListTile(value: 'SSLC',title: Text('SSLC'), groupValue: _quali, onChanged:(value) {
        setState(() {
          _quali=value.toString();
        });

      },)),
        Expanded(child: RadioListTile(value: 'PLUS2',title: Text('PLUS 2'), groupValue: _quali, onChanged:(value) {
          setState(() {
            _quali=value.toString();
          });

        },)),Expanded(child: RadioListTile(value: 'DEGREE',title: Text('GEGREE'), groupValue: _quali, onChanged:(value) {
          setState(() {
            _quali=value.toString();
          });

        },)),Expanded(child: RadioListTile(value: 'PG',title: Text('PG'), groupValue: _quali, onChanged:(value) {
          setState(() {
            _quali=value.toString();
          });

        },))],),
      Row(children: [ElevatedButton(onPressed: () => {
      if(txtname.text.length==0)
      {
         txtoutput.text='Plz input the name'



          }
      else
        {
          txtoutput.text='hi ${txtname.text} Your qualification is=${_quali}'

        }
      }, child: Text('clicked'))],),
       Row(children: [Expanded(child: TextField(controller:txtoutput ))],)
      ],),),
    );
  }
}


