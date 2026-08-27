import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TEN = TextEditingController();
  String ten = "";
  String tin_nhan = 'Chạm vào dòng này';
  @override
  void dispose() {
    TEN.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("2/9 quoc khanh ")),
        body: Container(
          child: ListView(
            children: [
              Text('Flutter web so 1 '),

              ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, color: Colors.redAccent),
                    Icon(Icons.search),
                    Icon(Icons.person, color: Colors.blue),
                  ],
                ),

                title: Text('import gpt 4.5'),
                trailing: IconButton(
                  icon: Icon(Icons.settings, color: Colors.blueGrey),
                  onPressed: () {
                    print("tùy chỉnh ");
                  },
                ),
              ),
              SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextField(
                      controller: TEN,
                      decoration: InputDecoration(
                        labelText: 'Tên của bạn',
                        hintText: 'Nhập tên...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ten = TEN.text;
                        });
                      },
                      child: Text('Hiển thị tên'),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tin_nhan = 'Bạn vừa chạm vào dòng này!';
                        });
                      },
                      child: Text(
                        'Bấm vô đây',
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Xin chào:' + ten, style: TextStyle(fontSize: 20)),
                    Text(tin_nhan),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
