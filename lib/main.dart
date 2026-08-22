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
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    ' 2 - 0 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Icon(Icons.star, color: Colors.amber),

                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Text('Việt Nam vô địch'),
                    ),
                  ),

                  SizedBox(width: 10),
                  Icon(Icons.flag, color: Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
