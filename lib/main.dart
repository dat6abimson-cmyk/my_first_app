import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dart")),
        body: Container(
          child: ListView(
            children: [
              Text("so 1"),
              Text("so 2"),
              Text("so 3"),
              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, color: Colors.redAccent),
                    Icon(Icons.search),
                    Icon(Icons.person, color: Colors.blue),
                  ],
                ),
                title: Text("import gpt 4.5"),
                trailing: Row(
                  // đang nghiên cứu dùng column ở đây nhưng k fix đc lỗi quá overflowed pixels + bấm nút k hiện nội dung nếu xài column
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite, size: 20, color: Colors.yellowAccent),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPOm7MmVfuGENFgGd0DCZbwGC70GDJGYTSTG18IBTMTw&s=10",
                      width: 30,
                      height: 30,
                    ),
                    Text(" 4-2 cho Việt Nam "),
                    IconButton(
                      onPressed: () {
                        print("to be continue...");
                      },
                      icon: Icon(Icons.settings),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print(" bạn vừa bấm nut");
                      },
                      child: Text("nút"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
