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

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 5),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Chào mừng đến với Flutter'),
              SizedBox(height: 20),
              Text('Học Flutter!'),
              SizedBox(height: 20),
              Text('VIệt Nam vô địch'),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
