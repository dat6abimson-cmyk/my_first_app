import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Dự án đầu tiên ",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w300,
              color: Colors.red,
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          width: 250,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black, width: 5),
          ),
          child: Text('Hello'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
