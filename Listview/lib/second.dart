//import 'dart:js';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _list = ["Ahmer", "Ali", "Moiz", "Hamza"];
  int _itemcount = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView in Flutter"),
        ),

        // body: ListView(             //1.This is ListView
        //   //reverse: true,     //reverses the text in down way
        //   children: [
        //     Text("Text 1"),            // you can easily give it to centre, padding or any widget
        //     Text("Text 2"),
        //     Center(child: Text("Text 3")),
        //     Text("Text 4"),
        //     Text("Text 5"),
        //     Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Text("Text 6"),
        //     ),
        //   ],
        // ),

        // body: ListView.builder(                 //2.This is ListView.builder for multiple childrens
        //   itemCount: _itemcount,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(30.0),
        //       child: Text("Title ${index + 1}"),
        //     );
        //   },
        // ),

        // body: ListView.separated(            //3.This is ListView.separater for multiple childrens separation

        //   itemCount: _itemcount,
        //   itemBuilder: (context, index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(30.0),
        //       child: Text("Title ${index + 1}"),
        //     );
        //   },
        //   separatorBuilder: (BuildContext context, _itemcount) => const Divider(),
        // ),

        // body: ListView.builder(            //4.To use _list from State< >
        //     itemCount: _list.length,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
        //         child: Text("${_list[index]}"),
        //       );
        //     }),

        body: ListView.separated(
          //listView.separated or listView.builder
          //5. This is ListTile, leadings
          itemCount: _itemcount,
          itemBuilder: (context, index) {
            return ListTile(
              leading: IconButton(
                icon: Icon(Icons.assessment),
                onPressed: () {},
                color: Colors.blue,
              ),
              title: Text(
                "${index + 1}",
                style: TextStyle(fontSize: 20.0),
              ),
              subtitle: Text("Already present"),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            height: 50.0,
            color: Colors.black,
          ),
        ));
  }
}
