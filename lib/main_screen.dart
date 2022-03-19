import 'package:flutter/material.dart';
import 'package:singgah/detail.dart';
import 'package:singgah/main.dart';
import 'package:singgah/model/singgah_item.dart';
import 'package:singgah/singgahHargaBersahabat.dart';
import 'package:singgah/singgahPilihanKami.dart';
import 'package:singgah/singgahTerdekat.dart';

//<-- Screen -->
class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffFFF7EC);
    Color secColor = Color(0xffFFE6C0);
    Color thirdColor = Color(0xffFFC772);

    return Scaffold(
      backgroundColor: mainColor,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MainScreen();
        } else if (constraints.maxWidth <= 1200) {
          return WebScreen(gridCount: 4);
        } else {
          return WebScreen(gridCount: 5);
        }
      }),
    );
  }
}

//<-- Mobile -->
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffFFF7EC);
    Color secColor = Color(0xffFFE6C0);
    Color thirdColor = Color(0xffFFC772);

    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            //<-- TopBar -->
            Container(
              margin: EdgeInsets.only(left: 24, right: 26, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo, Rodhi',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: thirdColor,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(height: 4),
                      Text('Cari Tempat Singgah dimana hari ini?',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Colors.black))
                    ],
                  ),
                  CircleAvatar(
                    child: ClipRRect(
                      child: Image.asset('image/myPic.jpeg'),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            //<-- SearchBar -->
            Container(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Telusuri tempat pilihanmu...',
                      hintStyle: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15))),
                )),

            //<-- Info -->
            Container(
              decoration: BoxDecoration(
                  color: secColor, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  child: Row(children: [
                    Expanded(
                      child: Image.asset(
                        'image/pic1.png',
                        width: 90,
                        height: 98,
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                              'Hay, Kami memiliki ribuan tempat singgah terbaik hanya untuk kamu..',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ))
                  ]),
                ),
              ),
            ),

            //<-- tab -->
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: secColor,
                              borderRadius: BorderRadius.circular(10)),
                          labelPadding: EdgeInsets.all(10),
                          labelColor: Color(0xff263238),
                          unselectedLabelColor: Colors.black,
                          isScrollable: true,
                          tabs: [
                            Text(
                              'Terdekat',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('Harga Bersahabat',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                            Text('Pilihan Kami',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                          ]),
                    ),
                    Container(
                      height: 350,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: TabBarView(children: [
                        SinggahTerdekat(),
                        SinggahHargaBersahabat(),
                        SinggahPilihanKami()
                      ]),
                    )
                  ],
                ))
          ],
        )),
      ),
    );
  }
}

//<-- Web View -->
class WebScreen extends StatelessWidget {
  final int gridCount;

  Color mainColor = Color(0xffFFF7EC);
  Color secColor = Color(0xffFFE6C0);
  Color thirdColor = Color(0xffFFC772);

  WebScreen({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Image.asset(
                    'image/pic1.png',
                    width: 100,
                    height: 108,
                  )),
                ),
                Text('singgah.',
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Poppins',
                        color: thirdColor,
                        fontWeight: FontWeight.w900))
              ],
            ),
          ),
          DefaultTabController(
              length: 3,
              child: Container(
                margin: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      child: TabBar(
                          indicator: BoxDecoration(
                              color: secColor,
                              borderRadius: BorderRadius.circular(10)),
                          labelPadding: EdgeInsets.all(10),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Text(
                              'Terdekat',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('Harga Bersahabat',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                            Text('Pilihan Kami',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)),
                          ]),
                    ),
                    Container(
                      height: 350,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: TabBarView(children: [
                        Container(
                          margin: EdgeInsets.all(24),
                          child: GridView.count(
                            crossAxisCount: gridCount,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.8,
                            children: ListItemSinggahTerdekat.map((singgah) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ScreenDetail(singgah: singgah);
                                  }));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            singgah.gambar,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 16),
                                          child: Text(
                                            singgah.nama,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(left: 16),
                                        child: Text(
                                          'IDR ' + singgah.harga + 'rb',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 8, bottom: 16, left: 16),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            SizedBox(width: 8),
                                            Text(singgah.rating,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(24),
                          child: GridView.count(
                            crossAxisCount: gridCount,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.8,
                            children:
                                ListItemSinggahHargaBersahabat.map((singgah) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ScreenDetail(singgah: singgah);
                                  }));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            singgah.gambar,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 16),
                                          child: Text(
                                            singgah.nama,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(left: 16),
                                        child: Text(
                                          'IDR ' + singgah.harga + 'rb',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 8, bottom: 16, left: 16),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            SizedBox(width: 8),
                                            Text(singgah.rating,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(24),
                          child: GridView.count(
                            crossAxisCount: gridCount,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.8,
                            children: ListItemSinggahPilihanKami.map((singgah) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ScreenDetail(singgah: singgah);
                                  }));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            singgah.gambar,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 16),
                                          child: Text(
                                            singgah.nama,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(left: 16),
                                        child: Text(
                                          'IDR ' + singgah.harga + 'rb',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 8, bottom: 16, left: 16),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            SizedBox(width: 8),
                                            Text(singgah.rating,
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
