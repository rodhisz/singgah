import 'package:flutter/material.dart';
import 'package:singgah/main.dart';
import 'package:singgah/model/singgah_item.dart';

//<-- Screen Detail -->
class ScreenDetail extends StatelessWidget {
  final SinggahItem singgah;

  ScreenDetail({required this.singgah});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return WebDetail(singgah: singgah);
        } else {
          return SinggahDetail(singgah: singgah);
        }
      },
    );
  }
}

//<-- Mobile -->
class SinggahDetail extends StatelessWidget {
  late final SinggahItem singgah;

  SinggahDetail({required this.singgah});

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffFFF7EC);
    Color secColor = Color(0xffFFE6C0);
    var i = 1;

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Card(
                        color: secColor,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new))),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: ClipRRect(
                  child: Image.asset(singgah.gambar),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 32),
                child: Text(
                  'Rumah Singgah ' + singgah.nama,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 32),
                child: Text(
                  'by ' + singgah.owner,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 28),
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.amber,
                      size: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        singgah.rating,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('dari ' + singgah.viewer + ' Reviewer',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: secColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 28),
                        child: Text(
                            singgah.harga +
                                ' ribu    |     ' +
                                singgah.kamar +
                                ' Kamar    |     ' +
                                singgah.kapasitas +
                                ' Orang',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle_rounded,
                          size: 45,
                          color: Colors.black,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(singgah.owner,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Text('Owner',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: secColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 24, right: 24, left: 24),
                        child: Text(
                          'Fasilitas',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 24, left: 24, right: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            //untuk menyebarkan list ke vertical
                            ...List.generate(
                                singgah.fasilitas.length,
                                (index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            '${i++}. ' +
                                                singgah.fasilitas[index],
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500))
                                      ],
                                    ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 24),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: secColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 100),
                              child: Text('BOOKING',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: secColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: BookmarkButton(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//<-- button statefull -->
class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool bookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        bookmark ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          bookmark = !bookmark;
        });
      },
    );
  }
}

//<-- Web View -->
class WebDetail extends StatelessWidget {
  final SinggahItem singgah;

  WebDetail({required this.singgah});

  @override
  Widget build(BuildContext context) {
    int i = 1;
    Color mainColor = Color(0xffFFF7EC);
    Color secColor = Color(0xffFFE6C0);
    Color thirdColor = Color(0xffFFC772);

    return Scaffold(
      backgroundColor: mainColor,
      body: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(
                    color: secColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
                )),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: ClipRRect(
                    child: Image.asset(singgah.gambar),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secColor,
                ),
                margin: EdgeInsets.all(24),
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 32),
                        child: Text(
                          'Rumah Singgah ' + singgah.nama,
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 32),
                        child: Text(
                          'by ' + singgah.owner,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 28),
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                singgah.rating,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                  'dari ' + singgah.viewer + ' Reviewer',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: mainColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 32),
                                child: Text(
                                    singgah.harga +
                                        ' ribu    |     ' +
                                        singgah.kamar +
                                        ' Kamar    |     ' +
                                        singgah.kapasitas +
                                        ' Orang',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.account_circle_rounded,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(singgah.owner,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: mainColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, right: 24, left: 24),
                                child: Text(
                                  'Fasilitas',
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 24, right: 24, left: 24),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    //untuk menyebarkan list ke vertical
                                    ...List.generate(
                                        singgah.fasilitas.length,
                                        (index) => Row(
                                              children: [
                                                Text(
                                                    '${i++}. ' +
                                                        singgah
                                                            .fasilitas[index],
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ],
                                            ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: mainColor,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 226),
                                    child: Text('BOOKING',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: mainColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: BookmarkButton(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
