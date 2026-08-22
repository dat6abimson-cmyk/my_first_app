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
              color: Colors.blue,
            ),
          ),
        ),
        body: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.red,
          ),
        ),
      ),
    ),
  );
}
