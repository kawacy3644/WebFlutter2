import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

class indexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => indexPageState();
}

class indexPageState extends State<indexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Center(
            child: Column(
              children: [
                Text(".."),
              ],
            )));
  }
}