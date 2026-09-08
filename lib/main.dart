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
        preferredSize: const Size.fromHeight(105),

        child: AppBar(
          toolbarHeight: 61,

          actions: [
            IconButton(
              icon: const Icon(Icons.menu, size: 30, color: Colors.grey),
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
                  const Icon(Icons.place, size: 20, color: Colors.grey),

                  const Text(
                    'Địa chỉ của bạn',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF616161),
                    ),
                  ),
                ],
              ),

              const Text(
                'FOOD DELIVERY !',
                style: TextStyle(
                  fontFamily: 'iCielCrocante',
                  fontSize: 25,
                  color: Color(0xFFFFAA00),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(44),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

              child: Row(
                children: [
                  // Ô tìm kiếm
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
                        height: 34,

                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),

                        child: Row(
                          children: [
                            const SizedBox(width: 5),

                            const Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 20,
                            ),

                            const SizedBox(width: 5),

                            Text(
                              'Tìm kiếm, nhà hàng, món ăn',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Nút tìm kiếm
                  SizedBox(
                    width: 39,
                    height: 34,

                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TrangTimKiem(),
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAA00),
                        padding: EdgeInsets.zero,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
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
      appBar: AppBar(
        title: Text('Trang Tìm Kiếm'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Nhập từ khóa tìm kiếm',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFAA00),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(child: Container()),
          Image.asset(
            'assets/banphim.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
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
