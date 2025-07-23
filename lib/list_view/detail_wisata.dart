import 'dart:math';

import 'package:bunga_project/main_layout.dart';
import 'package:flutter/material.dart';

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String kota;
  final String image;
  final String desc;

  DetailWisataScreen({
    required this.nama,
    required this.desc,
    required this.image,
    required this.kota,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: nama,
      body: SafeArea(
          child: Container(
        color: Colors.pink,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomLeft,
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                  )),
            ),
            SizedBox(height: 10),
            Container(height: 280, child: Text(desc)),
          ],
        ),
      )),
    );
  }
}
