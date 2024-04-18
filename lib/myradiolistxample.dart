

import 'package:flutter/material.dart';

class Myradio extends StatefulWidget {
  const Myradio({super.key});

  @override
  State<Myradio> createState() => _MyradioState();
}

class _MyradioState extends State<Myradio> {
  String? _quali="SSLC";
  TextEditingController txtname=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          children: [TextField(
            controller: txtname,
            decoration: InputDecoration(
                hintText: 'enter name',
                border:OutlineInputBorder())
            ,)  ,
        RadioListTile(value: 'SSLC',title: Text('SSLC'), groupValue: _quali, onChanged: (value) {

          },),
            RadioListTile(value: 'PLUS2',title: Text('PLUS2'), groupValue: _quali, onChanged: (value) {

            },)
          ,
            ],
        ),
      ),
    );
  }
}
