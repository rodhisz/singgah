import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:singgah/detail.dart';
import 'package:singgah/model/singgah_item.dart';

class SinggahPilihanKami extends StatelessWidget {
  const SinggahPilihanKami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffFFF7EC);
    Color secColor = Color(0xffFFE6C0);

    return CarouselSlider.builder(
      options: CarouselOptions(
          enlargeCenterPage: true,
          viewportFraction: 0.63,
          disableCenter: true,
          autoPlay: true),
      itemCount: ListItemSinggahPilihanKami.length,
      itemBuilder: (context, index, pageViewIndex) {
        final SinggahItem singgahPilihanKami =
            ListItemSinggahPilihanKami[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SinggahDetail(
                singgah: singgahPilihanKami,
              );
            }));
          },
          child: Stack(
            children: [
              Container(
                height: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  child: Image.asset(
                    singgahPilihanKami.gambar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, top: 8),
                          decoration: BoxDecoration(
                              color: secColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Pilihan Kami',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.black]),
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                singgahPilihanKami.nama,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            Row(
                              children: [
                                Text(singgahPilihanKami.jarak + ' KM',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                                SizedBox(width: 8),
                                Text('IDR ' + singgahPilihanKami.harga + 'rb',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
