import 'package:flutter/material.dart';

void main() {
  runApp(const Appcuatoi());
}

class Appcuatoi extends StatelessWidget {
  const Appcuatoi({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Man_splash(),
    );
  }
}

class Man_splash extends StatefulWidget {
  const Man_splash({super.key});
  @override
  State<Man_splash> createState() => Giu_man_hinh();
}

class Giu_man_hinh extends State<Man_splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Man_hinh_chinh()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCA311),
      body: Center(child: Image.asset("assets/vn.png", color: Colors.white)),
    );
  }
}

class Man_hinh_chinh extends StatelessWidget {
  Man_hinh_chinh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.menu, size: 30, color: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrangTaiKhoan()),
                );
              },
            ),
          ],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.place, size: 20, color: Colors.grey),
                  Text(
                    'Địa chỉ của bạn',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
              Text(
                'TÊN HÃNG',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TrangTimKiem(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey),
                            Text(
                              'Tìm kiếm , nhà hàng, món ăn ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TrangTimKiem()),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(50, 50),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [

      ],
      ),
    );
  }
}

class TrangTimKiem extends StatelessWidget {
  const TrangTimKiem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trang Tìm Kiếm')),
      body: Center(child: Text('Nội dung trang tìm kiếm')),
    );
  }
}

class TrangTaiKhoan extends StatelessWidget {
  const TrangTaiKhoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trang Tài Khoản')),
      body: Center(child: Text('Nội dung trang tài khoản')),
    );
  }
}
